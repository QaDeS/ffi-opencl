$: << "../lib"
require 'ffi-opencl'

def show(size, obj, *keys)
  keys.each do |k|
    puts ("  "*size) << k.to_s.capitalize << ': ' << obj.send(k).to_s
  end
end

puts "There is/are #{OpenCL.platforms.size} platforms"
OpenCL.platforms.each do |p|
  show 0, p, :name, :vendor, :version, :profile, :extensions
  p.devices.each do |d|
    show 1, d, :name, :type, :vendor, :vendor_id, :queue_properties, :version, :profile, :extensions
  end
  puts
end
