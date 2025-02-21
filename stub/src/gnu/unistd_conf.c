#include <moonbit_posix_types.h>
#include <unistd.h>

// FFI namespace moonbit_posix_
int32_t moonbit_posix__CS_GNU_LIBC_VERSION() { return _CS_GNU_LIBC_VERSION; }
int32_t moonbit_posix__CS_GNU_LIBPTHREAD_VERSION() { return _CS_GNU_LIBPTHREAD_VERSION; }