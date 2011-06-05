require 'rbconfig'
module CL
  extend FFI::Library
  case Config::CONFIG['target_os']
  when /linux/
    ffi_lib 'OpenCL'
  when /darwin/
    ffi_lib '/System/Library/Frameworks/OpenCL.framework/OpenCL'
  end
end
