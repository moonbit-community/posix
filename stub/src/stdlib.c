#include <moonbit_posix_types.h>
#include <stdlib.h>

// https://man7.org/linux/man-pages/man3/system.3.html

int32_t moonbit_posix_system(cstr_t command) {
  return system(command);
}