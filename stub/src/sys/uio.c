#include <moonbit_posix_types.h>
#include <sys/uio.h>

// FFI namespace moonbit_posix_

// https://man7.org/linux/man-pages/man2/writev.2.html
int64_t moonbit_posix_writev(int fd, void* iov, int iovcnt) {
  return moonbit_posix_writev(fd, iov, iovcnt);
}

// https://man7.org/linux/man-pages/man2/readv.2.html
int64_t moonbit_posix_readv(int fd, void* iov, int iovcnt) {
  return readv(fd, iov, iovcnt);
}

// https://man7.org/linux/man-pages/man2/preadv.2.html
int64_t moonbit_posix_preadv
(
  int fd,
  const struct iovec* iov,
  int iovcnt,
  int64_t offset
) {
  return preadv(fd, iov, iovcnt, offset);
}

// https://man7.org/linux/man-pages/man2/pwritev.2.html
int64_t moonbit_posix_pwritev
(
  int fd,
  const struct iovec* iov,
  int iovcnt,
  int64_t offset
) {
  return pwritev(fd, iov, iovcnt, offset);
}