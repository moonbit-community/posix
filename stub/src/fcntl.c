#include <fcntl.h>
#include <moonbit_posix_types.h>


#ifndef __APPLE__
access_mode_t moonbit_posix_F_OK() { return F_OK; }
access_mode_t moonbit_posix_R_OK() { return R_OK; }
access_mode_t moonbit_posix_W_OK() { return W_OK; }
access_mode_t moonbit_posix_X_OK() { return X_OK; }
open_flag_t moonbit_posix_O_RSYNC() { return O_RSYNC; }
#endif 
// https://www.man7.org/linux/man-pages/man0/fcntl.h.0p.html


fd_t moonbit_posix_AT_FDCWD() { return AT_FDCWD; }

at_flag_t moonbit_posix_AT_EACCESS() { return AT_EACCESS; }
at_flag_t moonbit_posix_AT_SYMLINK_NOFOLLOW() {
  return AT_SYMLINK_NOFOLLOW;
}
at_flag_t moonbit_posix_AT_SYMLINK_FOLLOW() {
  return AT_SYMLINK_FOLLOW;
}
at_flag_t moonbit_posix_AT_REMOVEDIR() { return AT_REMOVEDIR; }

open_flag_t moonbit_posix_O_ACCMODE() { return O_ACCMODE; }
open_flag_t moonbit_posix_O_APPEND() { return O_APPEND; }
open_flag_t moonbit_posix_O_CLOEXEC() { return O_CLOEXEC; }
open_flag_t moonbit_posix_O_CREAT() { return O_CREAT; }
open_flag_t moonbit_posix_O_DIRECTORY() { return O_DIRECTORY; }
open_flag_t moonbit_posix_O_DSYNC() { return O_DSYNC; }
open_flag_t moonbit_posix_O_EXCL() { return O_EXCL; }
open_flag_t moonbit_posix_O_NOCTTY() { return O_NOCTTY; }
open_flag_t moonbit_posix_O_NOFOLLOW() { return O_NOFOLLOW; }
open_flag_t moonbit_posix_O_NONBLOCK() { return O_NONBLOCK; }
open_flag_t moonbit_posix_O_RDONLY() { return O_RDONLY; }
open_flag_t moonbit_posix_O_RDWR() { return O_RDWR; }
open_flag_t moonbit_posix_O_SYNC() { return O_SYNC; }
open_flag_t moonbit_posix_O_TRUNC() { return O_TRUNC; }
open_flag_t moonbit_posix_O_WRONLY() { return O_WRONLY; }

fcntl_cmd_t moonbit_posix_F_DUPFD() { return F_DUPFD; }
fcntl_cmd_t moonbit_posix_F_DUPFD_CLOEXEC() {
  return F_DUPFD_CLOEXEC;
}
fcntl_cmd_t moonbit_posix_F_GETFD() { return F_GETFD; }
fcntl_cmd_t moonbit_posix_F_SETFD() { return F_SETFD; }
fcntl_cmd_t moonbit_posix_F_GETFL() { return F_GETFL; }
fcntl_cmd_t moonbit_posix_F_SETFL() { return F_SETFL; }
fcntl_cmd_t moonbit_posix_F_GETLK() { return F_GETLK; }
fcntl_cmd_t moonbit_posix_F_SETLK() { return F_SETLK; }
fcntl_cmd_t moonbit_posix_F_SETLKW() { return F_SETLKW; }
fcntl_cmd_t moonbit_posix_F_GETOWN() { return F_GETOWN; }
fcntl_cmd_t moonbit_posix_F_SETOWN() { return F_SETOWN; }
fcntl_cmd_t moonbit_posix_FD_CLOEXEC() { return FD_CLOEXEC; }
fcntl_cmd_t moonbit_posix_F_RDLCK() { return F_RDLCK; }
fcntl_cmd_t moonbit_posix_F_UNLCK() { return F_UNLCK; }
fcntl_cmd_t moonbit_posix_F_WRLCK() { return F_WRLCK; }

//  https://www.man7.org/linux/man-pages/man0/fcntl.h.0p.html
fd_t moonbit_posix_openat(
    int32_t dirfd,
    cstr_t path,
    open_flag_t oflag,
    access_mode_t mode) {
  return openat(dirfd, path, oflag, mode);
}
