#include <moonbit_posix_types.h>
#include <sys/utsname.h>

// FFI namespace moonbit_posix_
// https://man7.org/linux/man-pages/man2/uname.2.html

int32_t moonbit_posix_uname(void* buf) {
  return uname(buf);
}