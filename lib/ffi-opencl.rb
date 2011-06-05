require 'ffi-cl'

module OpenCL

private
  module Helpers
    def self.included(mdl)
      mdl.extend ClassMethods
    end

    def get_sized_info(mth, *args)
      num_ptr = FFI::MemoryPointer.new :uint
      err = CL.send(mth, *args, 0, nil, num_ptr)
      raise "Initial #{mth} failed: #{err}" unless err == CL::CL_SUCCESS
      num = num_ptr.read_int

      info_ptr = FFI::MemoryPointer.new(:pointer, num)
      err = CL.send(mth, *args, num, info_ptr, num_ptr)
      raise "#{name} failed: #{err}" unless err == CL::CL_SUCCESS
      if block_given?
        yield info_ptr, num
      else
        return info_ptr, num
      end
    end

    module ClassMethods
      # re, default_type=:string, overrides = {}
      def info_accessors(re, *args)
        overrides = args.last.is_a?(Hash) ? args.pop : {}
        default_type = args.last || :string
        CL.constants.grep(re) do |key|
          name = $1.downcase
          over = overrides[name.to_sym] || []
          case over
          when Array
            type, post = over
          when Symbol
            type = over
          when String
            post = over
          end
          type ||= default_type

          puts "#{name}(#{type.inspect}) -> #{key}#{post}"
          class_eval <<-RUBY
            def #{name}
              @#{name} ||= begin
                ptr, num = get_info(CL::#{key})
                ptr.read_#{type}#{post}
              end
            end
          RUBY
        end
      end
    end
  end

  module ClassMethods
    include Helpers

    def platforms
      @platforms ||= begin
        get_sized_info(:clGetPlatformIDs) do |ptr, num|
          ptr.read_array_of_pointer(num).map{|id| Platform.new(id)}
        end
      end
    end
  end

  class Platform
    include Helpers
    attr_reader :id

    info_accessors /CL_PLATFORM_(\w+)/, :extensions => '.split.map(&:to_sym)'

    def initialize(id)
      @id = id
      @devices = {}
      @registered_devices = {}
    end

    def devices(type = :all)
      @devices[type] ||= begin
        device_type = CL.const_get("CL_DEVICE_TYPE_#{type.upcase}")
        raise "Invalid device type: #{type.inspect}" unless device_type

        get_sized_info(:clGetDeviceIDs, @id, device_type) do |ptr, num|
          ptr.read_array_of_pointer(num).map{|id| get_device(id)}
        end
      end
    end
    
    private
    def get_info(key)
      get_sized_info(:clGetPlatformInfo, @id, key)
    end
    def get_device(id)
      @registered_devices[id] ||= Device.new(self, id)
    end
  end

  class Device
    include Helpers
    attr_reader :platform, :id

    info_accessors /CL_DEVICE_(\w+)/, :int,
      # TODO get all the types right
      :vendor => :string,
      :name => :string,
      :profile => :string,
      :version => :string,
      :extensions => [:string, '.split.map(&:to_sym)']

    def initialize(platform, id)
      @platform, @id = platform, id
    end

    private
    def get_info(key)
      get_sized_info(:clGetDeviceInfo, @id, key)
    end
  end

public
  extend ClassMethods

end
