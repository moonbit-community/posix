///|
extern "c" fn _AT_EACCESS() -> AtFlag = "moonbit_posix_AT_EACCESS"

///|
extern "c" fn _AT_SYMLINK_FOLLOW() -> AtFlag = "moonbit_posix_AT_SYMLINK_FOLLOW"

///|
extern "c" fn _AT_SYMLINK_NOFOLLOW() -> AtFlag = "moonbit_posix_AT_SYMLINK_NOFOLLOW"

///|
extern "c" fn _AT_REMOVEDIR() -> AtFlag = "moonbit_posix_AT_REMOVEDIR"

///|
pub let at_eaccess : AtFlag = _AT_EACCESS()

///|
pub let at_symlink_follow : AtFlag = _AT_SYMLINK_FOLLOW()

///|
pub let at_symlink_nofollow : AtFlag = _AT_SYMLINK_NOFOLLOW()

///|
pub let at_removedir : AtFlag = _AT_REMOVEDIR()

///|
extern "c" fn _F_OK() -> AccessMode = "moonbit_posix_F_OK"

///|
extern "c" fn _R_OK() -> AccessMode = "moonbit_posix_R_OK"

///|
extern "c" fn _W_OK() -> AccessMode = "moonbit_posix_W_OK"

///|
extern "c" fn _X_OK() -> AccessMode = "moonbit_posix_X_OK"

///|
pub let f_ok : AccessMode = _F_OK()

///|
pub let r_ok : AccessMode = _R_OK()

///|
pub let w_ok : AccessMode = _W_OK()

///|
pub let x_ok : AccessMode = _X_OK()

///|
extern "c" fn _O_ACCMODE() -> OpenFlag = "moonbit_posix_O_ACCMODE"

///|
extern "c" fn _O_APPEND() -> OpenFlag = "moonbit_posix_O_APPEND"

///|
extern "c" fn _O_CLOEXEC() -> OpenFlag = "moonbit_posix_O_CLOEXEC"

///|
extern "c" fn _O_CREAT() -> OpenFlag = "moonbit_posix_O_CREAT"

///|
extern "c" fn _O_DIRECTORY() -> OpenFlag = "moonbit_posix_O_DIRECTORY"

///|
extern "c" fn _O_DSYNC() -> OpenFlag = "moonbit_posix_O_DSYNC"

///|
extern "c" fn _O_EXCL() -> OpenFlag = "moonbit_posix_O_EXCL"

///|
extern "c" fn _O_EXEC() -> OpenFlag = "moonbit_posix_O_EXEC"

///|
extern "c" fn _O_NOCTTY() -> OpenFlag = "moonbit_posix_O_NOCTTY"

///|
extern "c" fn _O_NOFOLLOW() -> OpenFlag = "moonbit_posix_O_NOFOLLOW"

///|
extern "c" fn _O_NONBLOCK() -> OpenFlag = "moonbit_posix_O_NONBLOCK"

///|
extern "c" fn _O_RDONLY() -> OpenFlag = "moonbit_posix_O_RDONLY"

///|
extern "c" fn _O_RDWR() -> OpenFlag = "moonbit_posix_O_RDWR"

///|
extern "c" fn _O_RSYNC() -> OpenFlag = "moonbit_posix_O_RSYNC"

///|
extern "c" fn _O_SYNC() -> OpenFlag = "moonbit_posix_O_SYNC"

///|
extern "c" fn _O_TRUNC() -> OpenFlag = "moonbit_posix_O_TRUNC"

///|
extern "c" fn _O_WRONLY() -> OpenFlag = "moonbit_posix_O_WRONLY"

///|
pub let o_accmode : OpenFlag = _O_ACCMODE()

///|
pub let o_append : OpenFlag = _O_APPEND()

///|
pub let o_cloexec : OpenFlag = _O_CLOEXEC()

///|
pub let o_creat : OpenFlag = _O_CREAT()

///|
pub let o_directory : OpenFlag = _O_DIRECTORY()

///|
pub let o_dsync : OpenFlag = _O_DSYNC()

///|
pub let o_excl : OpenFlag = _O_EXCL()

///|
pub let o_exec : OpenFlag = _O_EXEC()

///|
pub let o_nocreat : OpenFlag = _O_NOCTTY()

///|
pub let o_nofollow : OpenFlag = _O_NOFOLLOW()

///|
pub let o_nonblock : OpenFlag = _O_NONBLOCK()

///|
pub let o_rdonly : OpenFlag = _O_RDONLY()

///|
pub let o_rdwr : OpenFlag = _O_RDWR()

///|
pub let o_rsync : OpenFlag = _O_RSYNC()

///|
pub let o_sync : OpenFlag = _O_SYNC()

///|
pub let o_trunc : OpenFlag = _O_TRUNC()

///|
pub let o_wronly : OpenFlag = _O_WRONLY()

///|
extern "c" fn _F_DUPFD() -> FcntlCmd = "moonbit_posix_F_DUPFD"

///|
extern "c" fn _F_DUPFD_CLOEXEC() -> FcntlCmd = "moonbit_posix_F_DUPFD_CLOEXEC"

///|
extern "c" fn _F_GETFD() -> FcntlCmd = "moonbit_posix_F_GETFD"

///|
extern "c" fn _F_SETFD() -> FcntlCmd = "moonbit_posix_F_SETFD"

///|
extern "c" fn _F_GETFL() -> FcntlCmd = "moonbit_posix_F_GETFL"

///|
extern "c" fn _F_SETFL() -> FcntlCmd = "moonbit_posix_F_SETFL"

///|
extern "c" fn _F_GETLK() -> FcntlCmd = "moonbit_posix_F_GETLK"

///|
extern "c" fn _F_SETLK() -> FcntlCmd = "moonbit_posix_F_SETLK"

///|
extern "c" fn _F_SETLKW() -> FcntlCmd = "moonbit_posix_F_SETLKW"

///|
extern "c" fn _F_GETOWN() -> FcntlCmd = "moonbit_posix_F_GETOWN"

///|
extern "c" fn _F_SETOWN() -> FcntlCmd = "moonbit_posix_F_SETOWN"

///|
extern "c" fn _FD_CLOEXEC() -> FcntlCmd = "moonbit_posix_FD_CLOEXEC"

///|
extern "c" fn _F_RDLCK() -> FcntlCmd = "moonbit_posix_F_RDLCK"

///|
extern "c" fn _F_UNLCK() -> FcntlCmd = "moonbit_posix_F_UNLCK"

///|
extern "c" fn _F_WRLCK() -> FcntlCmd = "moonbit_posix_F_WRLCK"

///|
pub let f_dupfd : FcntlCmd = _F_DUPFD()

///|
pub let f_dupfd_cloexec : FcntlCmd = _F_DUPFD_CLOEXEC()

///|
pub let f_getfd : FcntlCmd = _F_GETFD()

///|
pub let f_setfd : FcntlCmd = _F_SETFD()

///|
pub let f_getfl : FcntlCmd = _F_GETFL()

///|
pub let f_setfl : FcntlCmd = _F_SETFL()

///|
pub let f_getlk : FcntlCmd = _F_GETLK()

///|
pub let f_setlk : FcntlCmd = _F_SETLK()

///|
pub let f_setlkw : FcntlCmd = _F_SETLKW()

///|
pub let f_getown : FcntlCmd = _F_GETOWN()

///|
pub let f_setown : FcntlCmd = _F_SETOWN()

///|
pub let fd_cloexec : FcntlCmd = _FD_CLOEXEC()

///|
pub let f_rdlck : FcntlCmd = _F_RDLCK()

///|
pub let f_unlck : FcntlCmd = _F_UNLCK()

///|
pub let f_wrlck : FcntlCmd = _F_WRLCK()

///|
/// https://man7.org/linux/man-pages/man2/open.2.html
pub extern "c" fn openat(
  dirfd : Fd,
  path : CStr,
  flags : OpenFlag,
  mode : Mode,
) -> Fd = "moonbit_posix_openat"

///|
extern "c" fn _AT_FDCWD() -> Fd = "moonbit_posix_AT_FDCWD"

///|
pub let at_fdcwd : Fd = _AT_FDCWD()
