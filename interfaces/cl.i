%module opencl

%{
module CL
extend FFI::Library
%}

#define CL_API_ENTRY
#define CL_API_CALL
#define CL_API_SUFFIX__VERSION_1_0
#define __attribute__(x)

typedef signed char		int8_t;
typedef short			int16_t;
typedef int			int32_t;
typedef long long		int64_t;
typedef unsigned char		uint8_t;
typedef unsigned short		uint16_t;
typedef unsigned int		uint32_t;
typedef unsigned long long	uint64_t;

typedef unsigned int		GLenum;
typedef unsigned char		GLboolean;
typedef unsigned int		GLbitfield;
typedef void			GLvoid;
typedef signed char		GLbyte;
typedef short			GLshort;
typedef int			GLint;
typedef unsigned char		GLubyte;
typedef unsigned short		GLushort;
typedef unsigned int		GLuint;
typedef int			GLsizei;
typedef float			GLfloat;
typedef float			GLclampf;
typedef double			GLdouble;
typedef double			GLclampd;


%include cl_platform.h
%include cl.h
%include cl_gl.h

%{
end
%}
