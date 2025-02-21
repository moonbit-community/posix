#include <moonbit_posix_types.h>
#include <stddef.h>
#include <unistd.h>

// FFI namespace moonbit_posix_

// https://man7.org/linux/man-pages/man2/access.2.html
rslt_t moonbit_posix_faccessat(
    fd_t dirfd,
    cstr_t path,
    access_mode_t mode,
    at_flag_t flags) {
  return faccessat(dirfd, path, mode, flags);
}

// https://man7.org/linux/man-pages/man2/unlink.2.html
rslt_t
moonbit_posix_unlinkat(fd_t dirfd, cstr_t path, at_flag_t flags) {
  return unlinkat(dirfd, path, flags);
}

// https://man7.org/linux/man-pages/man3/chown.3p.html
rslt_t moonbit_posix_fchownat(
    fd_t dirfd,
    cstr_t path,
    uid_t owner,
    gid_t group,
    at_flag_t flags) {
  return fchownat(dirfd, path, owner, group, flags);
}

// https://man7.org/linux/man-pages/man2/link.2.html
rslt_t moonbit_posix_linkat(
    fd_t olddirfd,
    cstr_t oldpath,
    fd_t newdirfd,
    cstr_t newpath,
    at_flag_t flags) {
  return linkat(olddirfd, oldpath, newdirfd, newpath, flags);
}

// https://man7.org/linux/man-pages/man2/symlink.2.html
rslt_t moonbit_posix_symlinkat(
    cstr_t target,
    fd_t newdirfd,
    cstr_t newpath) {
  return symlinkat(target, newdirfd, newpath);
}

// https://man7.org/linux/man-pages/man2/readlink.2.html
opt_size_t moonbit_posix_readlinkat(
    fd_t dirfd,
    cstr_t path,
    char* buf,
    size_t bufsiz) {
  return readlinkat(dirfd, path, buf, bufsiz);
}
