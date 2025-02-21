#include <moonbit_posix_types.h>
#include <grp.h>
#include <stddef.h>

// FFI namespace moonbit_posix_

#ifndef __APPLE__

// https://man7.org/linux/man-pages/man2/setgroups.2.html
rslt_t moonbit_posix_setgroups(size_t size, gid_t* list) {
  return setgroups(size, list);
}

#endif