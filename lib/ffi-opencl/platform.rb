require 'rbconfig'
module CL
  extend FFI::Library
  case Config::CONFIG['target_os']
  when /linux/
    ffi_lib 'libCL.so.1'
  when /darwin/
    ffi_lib '/System/Library/Frameworks/OpenCL.framework/OpenCL'
  end
end
