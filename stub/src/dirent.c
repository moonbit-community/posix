#include <moonbit_posix_types.h>
#include <dirent.h>

// FFI namespace moonbit_posix_

// https://man7.org/linux/man-pages/man3/fdopendir.3.html
DIR* moonbit_posix_fdopendir(fd_t fd) {
  return fdopendir(fd);
}

// https://man7.org/linux/man-pages/man3/dirfd.3p.html
fd_t moonbit_posix_dirfd(DIR* dirp) {
  return dirfd(dirp);
}

// https://man7.org/linux/man-pages/man3/closedir.3.html
rslt_t moonbit_posix_closedir(DIR* dirp) {
  return closedir(dirp);
}