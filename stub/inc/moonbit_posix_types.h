#pragma once

#include <moonbit.h>
#include <stdint.h>
#include <sys/types.h>

typedef int32_t fd_t;

typedef const char* cstr_t;

// On success, zero is returned.
// On error, -1 is returned, and errno is set to indicate the error.
// ref:
// https://man7.org/linux/man-pages/man2/gethostname.2.html#RETURN_VALUE
typedef int32_t rslt_t;

// Upon successful completion 0 is returned.
// Otherwise, EOF is returned and errno is set to indicate the error.
// ref: https://man7.org/linux/man-pages/man3/fflush.3.html#RETURN_VALUE
typedef int32_t frslt_t;

// On success, the number of bytes is returned (zero indicates end of file) 
// On error, -1 is returned, and errno is set to indicate the error. 
// ref: https://man7.org/linux/man-pages/man2/read.2.html#RETURN_VALUE
typedef ssize_t opt_size_t;

typedef gid_t sid_t;

typedef char byte_t;

typedef int32_t whence_t;

typedef int32_t buf_mode_t;

typedef int32_t access_mode_t;

typedef int32_t signal_t;

typedef int32_t errno_t;

typedef int32_t at_flag_t;

typedef int32_t open_flag_t;

typedef int32_t fcntl_cmd_t;
// FFI namespace moonbit_posix_