%module opencl

%{
module CL
  extend FFI::Library
%}


%include cl.h

%{
end
%}
