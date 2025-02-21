#include <moonbit_posix_types.h>
#include <unistd.h>

// FFI namespace moonbit_posix_

// https://man7.org/linux/man-pages/man2/close.2.html
rslt_t moonbit_posix_close(fd_t fd) { return close(fd); }

// https://man7.org/linux/man-pages/man2/write.2.html
opt_size_t moonbit_posix_write(fd_t fd, const byte_t* buf, uint64_t count) {
  return write(fd, buf, count);
}

// https://man7.org/linux/man-pages/man2/read.2.html
opt_size_t moonbit_posix_read(fd_t fd, byte_t* buf, uint64_t count) {
  return read(fd, buf, count);
}

// https://man7.org/linux/man-pages/man2/dup.2.html
rslt_t moonbit_posix_dup(fd_t fd) { return dup(fd); }

// https://man7.org/linux/man-pages/man2/dup.2.html
rslt_t moonbit_posix_dup2(fd_t oldfd, fd_t newfd) {
  return dup2(oldfd, newfd);
}

// https://man7.org/linux/man-pages/man3/fchdir.3p.html
rslt_t moonbit_posix_fchdir(fd_t fd) { return fchdir(fd); }

// https://man7.org/linux/man-pages/man3/fchown.3p.html
rslt_t
moonbit_posix_fchown(fd_t fd, uint32_t owner, uint32_t group) {
  return fchown(fd, owner, group);
}

// https://man7.org/linux/man-pages/man3/fdatasync.3p.html
rslt_t moonbit_posix_fdatasync(fd_t fd) { return fdatasync(fd); }



// https://man7.org/linux/man-pages/man3/pathconf.3.html
int64_t moonbit_posix_fpathconf(fd_t fd, int32_t name) {
  return fpathconf(fd, name);
}

// https://man7.org/linux/man-pages/man2/fsync.2.html
rslt_t moonbit_posix_fsync(fd_t fd) { return fsync(fd); }

// https://man7.org/linux/man-pages/man3/ftruncate.3p.html
rslt_t moonbit_posix_ftruncate(fd_t fd, int64_t length) {
  return ftruncate(fd, length);
}

// https://man7.org/linux/man-pages/man2/pipe.2.html
rslt_t moonbit_posix_pipe(fd_t* pipefd) { return pipe(pipefd); }

// https://man7.org/linux/man-pages/man2/pread.2.html
opt_size_t moonbit_posix_pread(
    fd_t fd,
    byte_t* buf,
    uint64_t count,
    off_t offset) {
  return pread(fd, buf, count, offset);
}

// https://www.man7.org/linux/man-pages/man3/pwrite.3p.html
opt_size_t moonbit_posix_pwrite(
    fd_t fd,
    const byte_t* buf,
    uint64_t count,
    off_t offset) {
  return pwrite(fd, buf, count, offset);
}

rslt_t moonbit_posix_STDIN_FILENO() { return STDIN_FILENO; }

rslt_t moonbit_posix_STDOUT_FILENO() { return STDOUT_FILENO; }

rslt_t moonbit_posix_STDERR_FILENO() { return STDERR_FILENO; }

// https://man7.org/linux/man-pages/man3/lockf.3.html
rslt_t moonbit_posix_lockf(fd_t fd, int32_t cmd, int64_t len) {
  return lockf(fd, cmd, len);
}

// https://www.man7.org/linux/man-pages/man3/isatty.3.html
rslt_t moonbit_posix_isatty(fd_t fd) { return isatty(fd); }

// https://man7.org/linux/man-pages/man2/lseek.2.html
int64_t
moonbit_posix_lseek(fd_t fd, off_t offset, whence_t whence) {
  return lseek(fd, offset, whence);
}

whence_t moonbit_posix_SEEK_SET() { return SEEK_SET; }

whence_t moonbit_posix_SEEK_CUR() { return SEEK_CUR; }

whence_t moonbit_posix_SEEK_END() { return SEEK_END; }

#ifndef __APPLE__
// https://man7.org/linux/man-pages/man3/fexecve.3.html
rslt_t moonbit_posix_fexecve(fd_t fd, void* argv, void* envp) {
  return fexecve(fd, argv, envp);
}
#endif 