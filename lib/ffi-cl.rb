$: << "../lib"

begin
  require 'rubygems'
rescue
  nil # try without it
end

require 'ffi'
require 'ffi-opencl/platform'
require 'ffi-opencl/cl'

