
module CL
extend FFI::Library
  CL_CHAR_BIT = 8
  CL_SCHAR_MAX = 127
  CL_SCHAR_MIN = (-127-1)
  CL_CHAR_MAX = 127
  CL_CHAR_MIN = (-127-1)
  CL_UCHAR_MAX = 255
  CL_SHRT_MAX = 32767
  CL_SHRT_MIN = (-32767-1)
  CL_USHRT_MAX = 65535
  CL_INT_MAX = 2147483647
  CL_INT_MIN = (-2147483647-1)
  CL_UINT_MAX = 0xffffffff
  CL_FLT_DIG = 6
  CL_FLT_MANT_DIG = 24
  CL_FLT_MAX_10_EXP = +38
  CL_FLT_MAX_EXP = +128
  CL_FLT_MIN_10_EXP = -37
  CL_FLT_MIN_EXP = -125
  CL_FLT_RADIX = 2
  CL_DBL_DIG = 15
  CL_DBL_MANT_DIG = 53
  CL_DBL_MAX_10_EXP = +308
  CL_DBL_MAX_EXP = +1024
  CL_DBL_MIN_10_EXP = -307
  CL_DBL_MIN_EXP = -1021
  CL_DBL_RADIX = 2
#  attach_function :__clGetExtensionFunctionAddress, [ :string ], :pointer
  class ClImageFormat < FFI::Struct
    layout(
           :image_channel_order, :uint,
           :image_channel_data_type, :uint
    )
  end
  CL_SUCCESS = 0
  CL_DEVICE_NOT_FOUND = -1
  CL_DEVICE_NOT_AVAILABLE = -2
  CL_DEVICE_COMPILER_NOT_AVAILABLE = -3
  CL_MEM_OBJECT_ALLOCATION_FAILURE = -4
  CL_OUT_OF_RESOURCES = -5
  CL_OUT_OF_HOST_MEMORY = -6
  CL_PROFILING_INFO_NOT_AVAILABLE = -7
  CL_MEM_COPY_OVERLAP = -8
  CL_IMAGE_FORMAT_MISMATCH = -9
  CL_IMAGE_FORMAT_NOT_SUPPORTED = -10
  CL_BUILD_PROGRAM_FAILURE = -11
  CL_MAP_FAILURE = -12
  CL_INVALID_VALUE = -30
  CL_INVALID_DEVICE_TYPE = -31
  CL_INVALID_PLATFORM = -32
  CL_INVALID_DEVICE = -33
  CL_INVALID_CONTEXT = -34
  CL_INVALID_QUEUE_PROPERTIES = -35
  CL_INVALID_COMMAND_QUEUE = -36
  CL_INVALID_HOST_PTR = -37
  CL_INVALID_MEM_OBJECT = -38
  CL_INVALID_IMAGE_FORMAT_DESCRIPTOR = -39
  CL_INVALID_IMAGE_SIZE = -40
  CL_INVALID_SAMPLER = -41
  CL_INVALID_BINARY = -42
  CL_INVALID_BUILD_OPTIONS = -43
  CL_INVALID_PROGRAM = -44
  CL_INVALID_PROGRAM_EXECUTABLE = -45
  CL_INVALID_KERNEL_NAME = -46
  CL_INVALID_KERNEL_DEFINITION = -47
  CL_INVALID_KERNEL = -48
  CL_INVALID_ARG_INDEX = -49
  CL_INVALID_ARG_VALUE = -50
  CL_INVALID_ARG_SIZE = -51
  CL_INVALID_KERNEL_ARGS = -52
  CL_INVALID_WORK_DIMENSION = -53
  CL_INVALID_WORK_GROUP_SIZE = -54
  CL_INVALID_WORK_ITEM_SIZE = -55
  CL_INVALID_GLOBAL_OFFSET = -56
  CL_INVALID_EVENT_WAIT_LIST = -57
  CL_INVALID_EVENT = -58
  CL_INVALID_OPERATION = -59
  CL_INVALID_GL_OBJECT = -60
  CL_INVALID_BUFFER_SIZE = -61
  CL_INVALID_MIP_LEVEL = -62
  CL_VERSION_1_0 = 1
  CL_FALSE = 0
  CL_TRUE = 1
  CL_PLATFORM_PROFILE = 0x0900
  CL_PLATFORM_VERSION = 0x0901
  CL_PLATFORM_NAME = 0x0902
  CL_PLATFORM_VENDOR = 0x0903
  CL_PLATFORM_EXTENSIONS = 0x0904
  CL_DEVICE_TYPE_DEFAULT = (1 << 0)
  CL_DEVICE_TYPE_CPU = (1 << 1)
  CL_DEVICE_TYPE_GPU = (1 << 2)
  CL_DEVICE_TYPE_ACCELERATOR = (1 << 3)
  CL_DEVICE_TYPE_ALL = 0xFFFFFFFF
  CL_DEVICE_TYPE = 0x1000
  CL_DEVICE_VENDOR_ID = 0x1001
  CL_DEVICE_MAX_COMPUTE_UNITS = 0x1002
  CL_DEVICE_MAX_WORK_ITEM_DIMENSIONS = 0x1003
  CL_DEVICE_MAX_WORK_GROUP_SIZE = 0x1004
  CL_DEVICE_MAX_WORK_ITEM_SIZES = 0x1005
  CL_DEVICE_PREFERRED_VECTOR_WIDTH_CHAR = 0x1006
  CL_DEVICE_PREFERRED_VECTOR_WIDTH_SHORT = 0x1007
  CL_DEVICE_PREFERRED_VECTOR_WIDTH_INT = 0x1008
  CL_DEVICE_PREFERRED_VECTOR_WIDTH_LONG = 0x1009
  CL_DEVICE_PREFERRED_VECTOR_WIDTH_FLOAT = 0x100A
  CL_DEVICE_PREFERRED_VECTOR_WIDTH_DOUBLE = 0x100B
  CL_DEVICE_MAX_CLOCK_FREQUENCY = 0x100C
  CL_DEVICE_ADDRESS_BITS = 0x100D
  CL_DEVICE_MAX_READ_IMAGE_ARGS = 0x100E
  CL_DEVICE_MAX_WRITE_IMAGE_ARGS = 0x100F
  CL_DEVICE_MAX_MEM_ALLOC_SIZE = 0x1010
  CL_DEVICE_IMAGE2D_MAX_WIDTH = 0x1011
  CL_DEVICE_IMAGE2D_MAX_HEIGHT = 0x1012
  CL_DEVICE_IMAGE3D_MAX_WIDTH = 0x1013
  CL_DEVICE_IMAGE3D_MAX_HEIGHT = 0x1014
  CL_DEVICE_IMAGE3D_MAX_DEPTH = 0x1015
  CL_DEVICE_IMAGE_SUPPORT = 0x1016
  CL_DEVICE_MAX_PARAMETER_SIZE = 0x1017
  CL_DEVICE_MAX_SAMPLERS = 0x1018
  CL_DEVICE_MEM_BASE_ADDR_ALIGN = 0x1019
  CL_DEVICE_MIN_DATA_TYPE_ALIGN_SIZE = 0x101A
  CL_DEVICE_SINGLE_FP_CONFIG = 0x101B
  CL_DEVICE_GLOBAL_MEM_CACHE_TYPE = 0x101C
  CL_DEVICE_GLOBAL_MEM_CACHELINE_SIZE = 0x101D
  CL_DEVICE_GLOBAL_MEM_CACHE_SIZE = 0x101E
  CL_DEVICE_GLOBAL_MEM_SIZE = 0x101F
  CL_DEVICE_MAX_CONSTANT_BUFFER_SIZE = 0x1020
  CL_DEVICE_MAX_CONSTANT_ARGS = 0x1021
  CL_DEVICE_LOCAL_MEM_TYPE = 0x1022
  CL_DEVICE_LOCAL_MEM_SIZE = 0x1023
  CL_DEVICE_ERROR_CORRECTION_SUPPORT = 0x1024
  CL_DEVICE_PROFILING_TIMER_RESOLUTION = 0x1025
  CL_DEVICE_ENDIAN_LITTLE = 0x1026
  CL_DEVICE_AVAILABLE = 0x1027
  CL_DEVICE_COMPILER_AVAILABLE = 0x1028
  CL_DEVICE_EXECUTION_CAPABILITIES = 0x1029
  CL_DEVICE_QUEUE_PROPERTIES = 0x102A
  CL_DEVICE_NAME = 0x102B
  CL_DEVICE_VENDOR = 0x102C
  CL_DRIVER_VERSION = 0x102D
  CL_DEVICE_PROFILE = 0x102E
  CL_DEVICE_VERSION = 0x102F
  CL_DEVICE_EXTENSIONS = 0x1030
  CL_DEVICE_PLATFORM = 0x1031
  CL_DEVICE_ADDRESS_32_BITS = (1 << 0)
  CL_DEVICE_ADDRESS_64_BITS = (1 << 1)
  CL_FP_DENORM = (1 << 0)
  CL_FP_INF_NAN = (1 << 1)
  CL_FP_ROUND_TO_NEAREST = (1 << 2)
  CL_FP_ROUND_TO_ZERO = (1 << 3)
  CL_FP_ROUND_TO_INF = (1 << 4)
  CL_FP_FMA = (1 << 5)
  CL_NONE = 0x0
  CL_READ_ONLY_CACHE = 0x1
  CL_READ_WRITE_CACHE = 0x2
  CL_LOCAL = 0x1
  CL_GLOBAL = 0x2
  CL_EXEC_KERNEL = (1 << 0)
  CL_EXEC_NATIVE_KERNEL = (1 << 1)
  CL_QUEUE_OUT_OF_ORDER_EXEC_MODE_ENABLE = (1 << 0)
  CL_QUEUE_PROFILING_ENABLE = (1 << 1)
  CL_CONTEXT_REFERENCE_COUNT = 0x1080
  CL_CONTEXT_NUM_DEVICES = 0x1081
  CL_CONTEXT_DEVICES = 0x1082
  CL_CONTEXT_PROPERTIES = 0x1083
  CL_CONTEXT_PLATFORM = 0x1084
  CL_QUEUE_CONTEXT = 0x1090
  CL_QUEUE_DEVICE = 0x1091
  CL_QUEUE_REFERENCE_COUNT = 0x1092
  CL_QUEUE_PROPERTIES = 0x1093
  CL_MEM_READ_WRITE = (1 << 0)
  CL_MEM_WRITE_ONLY = (1 << 1)
  CL_MEM_READ_ONLY = (1 << 2)
  CL_MEM_USE_HOST_PTR = (1 << 3)
  CL_MEM_ALLOC_HOST_PTR = (1 << 4)
  CL_MEM_COPY_HOST_PTR = (1 << 5)
  CL_R = 0x10B0
  CL_A = 0x10B1
  CL_RG = 0x10B2
  CL_RA = 0x10B3
  CL_RGB = 0x10B4
  CL_RGBA = 0x10B5
  CL_BGRA = 0x10B6
  CL_ARGB = 0x10B7
  CL_INTENSITY = 0x10B8
  CL_LUMINANCE = 0x10B9
  CL_SNORM_INT8 = 0x10D0
  CL_SNORM_INT16 = 0x10D1
  CL_UNORM_INT8 = 0x10D2
  CL_UNORM_INT16 = 0x10D3
  CL_UNORM_SHORT_565 = 0x10D4
  CL_UNORM_SHORT_555 = 0x10D5
  CL_UNORM_INT_101010 = 0x10D6
  CL_SIGNED_INT8 = 0x10D7
  CL_SIGNED_INT16 = 0x10D8
  CL_SIGNED_INT32 = 0x10D9
  CL_UNSIGNED_INT8 = 0x10DA
  CL_UNSIGNED_INT16 = 0x10DB
  CL_UNSIGNED_INT32 = 0x10DC
  CL_HALF_FLOAT = 0x10DD
  CL_FLOAT = 0x10DE
  CL_MEM_OBJECT_BUFFER = 0x10F0
  CL_MEM_OBJECT_IMAGE2D = 0x10F1
  CL_MEM_OBJECT_IMAGE3D = 0x10F2
  CL_MEM_TYPE = 0x1100
  CL_MEM_FLAGS = 0x1101
  CL_MEM_SIZE = 0x1102
  CL_MEM_HOST_PTR = 0x1103
  CL_MEM_MAP_COUNT = 0x1104
  CL_MEM_REFERENCE_COUNT = 0x1105
  CL_MEM_CONTEXT = 0x1106
  CL_IMAGE_FORMAT = 0x1110
  CL_IMAGE_ELEMENT_SIZE = 0x1111
  CL_IMAGE_ROW_PITCH = 0x1112
  CL_IMAGE_SLICE_PITCH = 0x1113
  CL_IMAGE_WIDTH = 0x1114
  CL_IMAGE_HEIGHT = 0x1115
  CL_IMAGE_DEPTH = 0x1116
  CL_ADDRESS_NONE = 0x1130
  CL_ADDRESS_CLAMP_TO_EDGE = 0x1131
  CL_ADDRESS_CLAMP = 0x1132
  CL_ADDRESS_REPEAT = 0x1133
  CL_FILTER_NEAREST = 0x1140
  CL_FILTER_LINEAR = 0x1141
  CL_SAMPLER_REFERENCE_COUNT = 0x1150
  CL_SAMPLER_CONTEXT = 0x1151
  CL_SAMPLER_NORMALIZED_COORDS = 0x1152
  CL_SAMPLER_ADDRESSING_MODE = 0x1153
  CL_SAMPLER_FILTER_MODE = 0x1154
  CL_MAP_READ = (1 << 0)
  CL_MAP_WRITE = (1 << 1)
  CL_PROGRAM_REFERENCE_COUNT = 0x1160
  CL_PROGRAM_CONTEXT = 0x1161
  CL_PROGRAM_NUM_DEVICES = 0x1162
  CL_PROGRAM_DEVICES = 0x1163
  CL_PROGRAM_SOURCE = 0x1164
  CL_PROGRAM_BINARY_SIZES = 0x1165
  CL_PROGRAM_BINARIES = 0x1166
  CL_PROGRAM_BUILD_STATUS = 0x1181
  CL_PROGRAM_BUILD_OPTIONS = 0x1182
  CL_PROGRAM_BUILD_LOG = 0x1183
  CL_BUILD_SUCCESS = 0
  CL_BUILD_NONE = -1
  CL_BUILD_ERROR = -2
  CL_BUILD_IN_PROGRESS = -3
  CL_KERNEL_FUNCTION_NAME = 0x1190
  CL_KERNEL_NUM_ARGS = 0x1191
  CL_KERNEL_REFERENCE_COUNT = 0x1192
  CL_KERNEL_CONTEXT = 0x1193
  CL_KERNEL_PROGRAM = 0x1194
  CL_KERNEL_WORK_GROUP_SIZE = 0x11B0
  CL_KERNEL_COMPILE_WORK_GROUP_SIZE = 0x11B1
  CL_KERNEL_LOCAL_MEM_SIZE = 0x11B2
  CL_EVENT_COMMAND_QUEUE = 0x11D0
  CL_EVENT_COMMAND_TYPE = 0x11D1
  CL_EVENT_REFERENCE_COUNT = 0x11D2
  CL_EVENT_COMMAND_EXECUTION_STATUS = 0x11D3
  CL_COMMAND_NDRANGE_KERNEL = 0x11F0
  CL_COMMAND_TASK = 0x11F1
  CL_COMMAND_NATIVE_KERNEL = 0x11F2
  CL_COMMAND_READ_BUFFER = 0x11F3
  CL_COMMAND_WRITE_BUFFER = 0x11F4
  CL_COMMAND_COPY_BUFFER = 0x11F5
  CL_COMMAND_READ_IMAGE = 0x11F6
  CL_COMMAND_WRITE_IMAGE = 0x11F7
  CL_COMMAND_COPY_IMAGE = 0x11F8
  CL_COMMAND_COPY_IMAGE_TO_BUFFER = 0x11F9
  CL_COMMAND_COPY_BUFFER_TO_IMAGE = 0x11FA
  CL_COMMAND_MAP_BUFFER = 0x11FB
  CL_COMMAND_MAP_IMAGE = 0x11FC
  CL_COMMAND_UNMAP_MEM_OBJECT = 0x11FD
  CL_COMMAND_MARKER = 0x11FE
  CL_COMMAND_WAIT_FOR_EVENTS = 0x11FF
  CL_COMMAND_BARRIER = 0x1200
  CL_COMMAND_ACQUIRE_GL_OBJECTS = 0x1201
  CL_COMMAND_RELEASE_GL_OBJECTS = 0x1202
  CL_COMPLETE = 0x0
  CL_RUNNING = 0x1
  CL_SUBMITTED = 0x2
  CL_QUEUED = 0x3
  CL_PROFILING_COMMAND_QUEUED = 0x1280
  CL_PROFILING_COMMAND_SUBMIT = 0x1281
  CL_PROFILING_COMMAND_START = 0x1282
  CL_PROFILING_COMMAND_END = 0x1283
  attach_function :clGetPlatformIDs, [ :uint, :pointer, :pointer ], :int
  attach_function :clGetPlatformInfo, [ :pointer, :uint, :uint, :pointer, :pointer ], :int
  attach_function :clGetDeviceIDs, [ :pointer, :ulong_long, :uint, :pointer, :pointer ], :int
  attach_function :clGetDeviceInfo, [ :pointer, :uint, :uint, :pointer, :pointer ], :int
  attach_function :clCreateContext, [ :pointer, :uint, :pointer, callback([ :string, :pointer, :uint, :pointer ], :void), :pointer, :pointer ], :pointer
  attach_function :clCreateContextFromType, [ :pointer, :ulong_long, callback([ :string, :pointer, :uint, :pointer ], :void), :pointer, :pointer ], :pointer
  attach_function :clRetainContext, [ :pointer ], :int
  attach_function :clReleaseContext, [ :pointer ], :int
  attach_function :clGetContextInfo, [ :pointer, :uint, :uint, :pointer, :pointer ], :int
  attach_function :clCreateCommandQueue, [ :pointer, :pointer, :ulong_long, :pointer ], :pointer
  attach_function :clRetainCommandQueue, [ :pointer ], :int
  attach_function :clReleaseCommandQueue, [ :pointer ], :int
  attach_function :clGetCommandQueueInfo, [ :pointer, :uint, :uint, :pointer, :pointer ], :int
  attach_function :clSetCommandQueueProperty, [ :pointer, :ulong_long, :uint, :pointer ], :int
  attach_function :clCreateBuffer, [ :pointer, :ulong_long, :uint, :pointer, :pointer ], :pointer
  attach_function :clCreateImage2D, [ :pointer, :ulong_long, :pointer, :uint, :uint, :uint, :pointer, :pointer ], :pointer
  attach_function :clCreateImage3D, [ :pointer, :ulong_long, :pointer, :uint, :uint, :uint, :uint, :uint, :pointer, :pointer ], :pointer
  attach_function :clRetainMemObject, [ :pointer ], :int
  attach_function :clReleaseMemObject, [ :pointer ], :int
  attach_function :clGetSupportedImageFormats, [ :pointer, :ulong_long, :uint, :uint, :pointer, :pointer ], :int
  attach_function :clGetMemObjectInfo, [ :pointer, :uint, :uint, :pointer, :pointer ], :int
  attach_function :clGetImageInfo, [ :pointer, :uint, :uint, :pointer, :pointer ], :int
  attach_function :clCreateSampler, [ :pointer, :uint, :uint, :uint, :pointer ], :pointer
  attach_function :clRetainSampler, [ :pointer ], :int
  attach_function :clReleaseSampler, [ :pointer ], :int
  attach_function :clGetSamplerInfo, [ :pointer, :uint, :uint, :pointer, :pointer ], :int
  attach_function :clCreateProgramWithSource, [ :pointer, :uint, :pointer, :pointer, :pointer ], :pointer
  attach_function :clCreateProgramWithBinary, [ :pointer, :uint, :pointer, :pointer, :pointer, :pointer, :pointer ], :pointer
  attach_function :clRetainProgram, [ :pointer ], :int
  attach_function :clReleaseProgram, [ :pointer ], :int
  attach_function :clBuildProgram, [ :pointer, :uint, :pointer, :string, callback([ :pointer, :pointer ], :void), :pointer ], :int
  attach_function :clUnloadCompiler, [  ], :int
  attach_function :clGetProgramInfo, [ :pointer, :uint, :uint, :pointer, :pointer ], :int
  attach_function :clGetProgramBuildInfo, [ :pointer, :pointer, :uint, :uint, :pointer, :pointer ], :int
  attach_function :clCreateKernel, [ :pointer, :string, :pointer ], :pointer
  attach_function :clCreateKernelsInProgram, [ :pointer, :uint, :pointer, :pointer ], :int
  attach_function :clRetainKernel, [ :pointer ], :int
  attach_function :clReleaseKernel, [ :pointer ], :int
  attach_function :clSetKernelArg, [ :pointer, :uint, :uint, :pointer ], :int
  attach_function :clGetKernelInfo, [ :pointer, :uint, :uint, :pointer, :pointer ], :int
  attach_function :clGetKernelWorkGroupInfo, [ :pointer, :pointer, :uint, :uint, :pointer, :pointer ], :int
  attach_function :clWaitForEvents, [ :uint, :pointer ], :int
  attach_function :clGetEventInfo, [ :pointer, :uint, :uint, :pointer, :pointer ], :int
  attach_function :clRetainEvent, [ :pointer ], :int
  attach_function :clReleaseEvent, [ :pointer ], :int
  attach_function :clGetEventProfilingInfo, [ :pointer, :uint, :uint, :pointer, :pointer ], :int
  attach_function :clFlush, [ :pointer ], :int
  attach_function :clFinish, [ :pointer ], :int
  attach_function :clEnqueueReadBuffer, [ :pointer, :pointer, :uint, :uint, :uint, :pointer, :uint, :pointer, :pointer ], :int
  attach_function :clEnqueueWriteBuffer, [ :pointer, :pointer, :uint, :uint, :uint, :pointer, :uint, :pointer, :pointer ], :int
  attach_function :clEnqueueCopyBuffer, [ :pointer, :pointer, :pointer, :uint, :uint, :uint, :uint, :pointer, :pointer ], :int
  attach_function :clEnqueueReadImage, [ :pointer, :pointer, :uint, :pointer, :pointer, :uint, :uint, :pointer, :uint, :pointer, :pointer ], :int
  attach_function :clEnqueueWriteImage, [ :pointer, :pointer, :uint, :pointer, :pointer, :uint, :uint, :pointer, :uint, :pointer, :pointer ], :int
  attach_function :clEnqueueCopyImage, [ :pointer, :pointer, :pointer, :pointer, :pointer, :pointer, :uint, :pointer, :pointer ], :int
  attach_function :clEnqueueCopyImageToBuffer, [ :pointer, :pointer, :pointer, :pointer, :pointer, :uint, :uint, :pointer, :pointer ], :int
  attach_function :clEnqueueCopyBufferToImage, [ :pointer, :pointer, :pointer, :uint, :pointer, :pointer, :uint, :pointer, :pointer ], :int
  attach_function :clEnqueueMapBuffer, [ :pointer, :pointer, :uint, :ulong_long, :uint, :uint, :uint, :pointer, :pointer, :pointer ], :pointer
  attach_function :clEnqueueMapImage, [ :pointer, :pointer, :uint, :ulong_long, :pointer, :pointer, :pointer, :pointer, :uint, :pointer, :pointer, :pointer ], :pointer
  attach_function :clEnqueueUnmapMemObject, [ :pointer, :pointer, :pointer, :uint, :pointer, :pointer ], :int
  attach_function :clEnqueueNDRangeKernel, [ :pointer, :pointer, :uint, :pointer, :pointer, :pointer, :uint, :pointer, :pointer ], :int
  attach_function :clEnqueueTask, [ :pointer, :pointer, :uint, :pointer, :pointer ], :int
  attach_function :clEnqueueNativeKernel, [ :pointer, callback([ :pointer ], :void), :pointer, :uint, :uint, :pointer, :pointer, :uint, :pointer, :pointer ], :int
  attach_function :clEnqueueMarker, [ :pointer, :pointer ], :int
  attach_function :clEnqueueWaitForEvents, [ :pointer, :uint, :pointer ], :int
  attach_function :clEnqueueBarrier, [ :pointer ], :int
  CL_GL_OBJECT_BUFFER = 0x2000
  CL_GL_OBJECT_TEXTURE2D = 0x2001
  CL_GL_OBJECT_TEXTURE3D = 0x2002
  CL_GL_OBJECT_RENDERBUFFER = 0x2003
  CL_GL_TEXTURE_TARGET = 0x2004
  CL_GL_MIPMAP_LEVEL = 0x2005
  attach_function :clCreateFromGLBuffer, [ :pointer, :ulong_long, :uint, :pointer ], :pointer
  attach_function :clCreateFromGLTexture2D, [ :pointer, :ulong_long, :uint, :int, :uint, :pointer ], :pointer
  attach_function :clCreateFromGLTexture3D, [ :pointer, :ulong_long, :uint, :int, :uint, :pointer ], :pointer
  attach_function :clCreateFromGLRenderbuffer, [ :pointer, :ulong_long, :uint, :pointer ], :pointer
  attach_function :clGetGLObjectInfo, [ :pointer, :pointer, :pointer ], :int
  attach_function :clGetGLTextureInfo, [ :pointer, :uint, :uint, :pointer, :pointer ], :int
  attach_function :clEnqueueAcquireGLObjects, [ :pointer, :uint, :pointer, :uint, :pointer, :pointer ], :int
  attach_function :clEnqueueReleaseGLObjects, [ :pointer, :uint, :pointer, :uint, :pointer, :pointer ], :int

end
