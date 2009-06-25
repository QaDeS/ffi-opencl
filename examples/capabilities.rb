$: << "../lib"
require 'ffi-opencl'

MAX_PLATFORM_IDS = 100

platform_id_ptr = FFI::MemoryPointer.new(:pointer, MAX_PLATFORM_IDS)
num_platform_ptr = FFI::MemoryPointer.new :uint

err = CL.clGetPlatformIDs(MAX_PLATFORM_IDS, platform_id_ptr, num_platform_ptr)
raise "clGetPlatformIDs failed: #{err}" unless err == CL::CL_SUCCESS

num_platform = num_platform_ptr.read_int
platform_ids = platform_id_ptr.read_array_of_int(num_platform)

a = platform_id_ptr.read_array_of_pointer(num_platform)
puts "There is/are #{num_platform} platforms"
a.each do |id|

    MAX_PLATFORM_PROFILE_STRING = 256
    platform_profile_ptr = FFI::MemoryPointer.new(:pointer, MAX_PLATFORM_PROFILE_STRING)
    platform_profile_size_ptr = FFI::MemoryPointer.new :uint
    
    err = CL.clGetPlatformInfo(id, CL::CL_PLATFORM_PROFILE, MAX_PLATFORM_PROFILE_STRING, platform_profile_ptr, platform_profile_size_ptr)
    raise "clGetPlatformInfo failed: #{err}" unless err == CL::CL_SUCCESS
    
    n = platform_profile_size_ptr.read_int
    s = platform_profile_ptr.read_string(n)

    puts s
end
