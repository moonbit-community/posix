#include <moonbit_posix_types.h>
#include <sys/stat.h>

// FFI namespace moonbit_posix_


// https://man7.org/linux/man-pages/man2/mkdir.2.html
int32_t moonbit_posix_mkdirat(int32_t dirfd, void *path, uint32_t mode) {
  return mkdirat(dirfd, path, mode);
}

// https://man7.org/linux/man-pages/man3/chmod.3p.html
int32_t moonbit_posix_fchmodat(int32_t dirfd, void *pathname, int32_t mode, int32_t flags) {
  return fchmodat(dirfd, pathname, mode, flags);
}

// https://man7.org/linux/man-pages/man2/stat.2.html
int32_t moonbit_posix_fstatat(int32_t dirfd, void *pathname, struct stat *buf, int32_t flags) {
  return fstatat(dirfd, pathname, buf, flags);
}

// https://man7.org/linux/man-pages/man3/stat.3type.html
