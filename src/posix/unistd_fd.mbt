///|
/// https://man7.org/linux/man-pages/man2/close.2.html
pub extern "c" fn close(fd : Fd) -> Rslt = "moonbit_posix_close"

///|
/// https://man7.org/linux/man-pages/man2/read.2.html
pub extern "c" fn read(fd : Fd, buf : Ptr[Byte], count : Size) -> OptSize = "moonbit_posix_read"

///|
/// https://man7.org/linux/man-pages/man2/write.2.html
pub extern "c" fn write(fd : Fd, buf : ConstPtr[Byte], count : Size) -> OptSize = "moonbit_posix_write"

///|
/// https://man7.org/linux/man-pages/man2/dup.2.html
pub extern "c" fn dup(fd : Fd) -> Fd = "moonbit_posix_dup"

///|
/// https://man7.org/linux/man-pages/man2/dup.2.html
pub extern "c" fn dup2(oldfd : Fd, newfd : Fd) -> Fd = "moonbit_posix_dup2"

///|
extern "c" fn _STDIN_FILENO() -> Fd = "moonbit_posix_STDIN_FILENO"

///|
extern "c" fn _STDOUT_FILENO() -> Fd = "moonbit_posix_STDOUT_FILENO"

///|
extern "c" fn _STDERR_FILENO() -> Fd = "moonbit_posix_STDERR_FILENO"

///|
pub let stdin_fileno : Fd = _STDIN_FILENO()

///|
pub let stdout_fileno : Fd = _STDOUT_FILENO()

///|
pub let stderr_fileno : Fd = _STDERR_FILENO()

///|
/// https://man7.org/linux/man-pages/man3/fchdir.3p.html
pub extern "c" fn fchdir(fd : Fd) -> Rslt = "moonbit_posix_fchdir"

///|
/// https://man7.org/linux/man-pages/man3/fchown.3p.html
pub extern "c" fn fchown(fd : Fd, owner : Uid, group : Gid) -> Rslt = "moonbit_posix_fchown"

///|
/// https://man7.org/linux/man-pages/man2/fsync.2.html
pub extern "c" fn fdatasync(fd : Fd) -> Rslt = "moonbit_posix_fdatasync"

///|
/// https://man7.org/linux/man-pages/man2/execve.2.html
pub extern "c" fn fexecve(
  fd : Fd,
  argv : ConstPtr[CStr],
  envp : ConstPtr[CStr],
) -> Rslt = "moonbit_posix_fexecve"

///|
///  https://man7.org/linux/man-pages/man3/pathconf.3.html
///  https://www.gnu.org/software/libc/manual/html_node/Pathconf.html
pub extern "c" fn fpathconf(fd : Fd, name : Int) -> OptSize = "moonbit_posix_fpathconf"

///|
/// https://man7.org/linux/man-pages/man2/fsync.2.html
pub extern "c" fn fsync(fd : Fd) -> Rslt = "moonbit_posix_fsync"

///|
/// https://man7.org/linux/man-pages/man3/ftruncate.3p.html
pub extern "c" fn ftruncate(fd : Fd, length : Int) -> Rslt = "moonbit_posix_ftruncate"

///|
/// // https://man7.org/linux/man-pages/man3/lockf.3.html
pub extern "c" fn lockf(fd : Fd, cmd : Int, len : OptSize) -> Rslt = "moonbit_posix_lockf"

///|
/// https://man7.org/linux/man-pages/man3/isatty.3.html
pub extern "c" fn isatty(fd : Fd) -> Int = "moonbit_posix_isatty"

///|
/// https://man7.org/linux/man-pages/man2/lseek.2.html
pub extern "c" fn lseek(fd : Fd, offset : Off, whence : Whence) -> Off = "moonbit_posix_lseek"

///|
/// https://man7.org/linux/man-pages/man7/pipe.7.html
/// https://man7.org/linux/man-pages/man2/pipe.2.html
pub extern "c" fn pipe(fds : Ptr[Fd]) -> Rslt = "moonbit_posix_pipe"

///|
/// https://man7.org/linux/man-pages/man2/pread.2.html
pub extern "c" fn pread(
  fd : Fd,
  buf : Ptr[Byte],
  count : Size,
  offset : Off,
) -> Rslt = "moonbit_posix_pread"

///|
/// https://www.man7.org/linux/man-pages/man3/pwrite.3p.html
pub extern "c" fn pwrite(
  fd : Fd,
  buf : ConstPtr[Byte],
  count : Size,
  offset : Off,
) -> Rslt = "moonbit_posix_pwrite"

///|
extern "c" fn _SEEK_SET() -> Whence = "moonbit_posix_SEEK_SET"

///|
extern "c" fn _SEEK_CUR() -> Whence = "moonbit_posix_SEEK_CUR"

///|
extern "c" fn _SEEK_END() -> Whence = "moonbit_posix_SEEK_END"

///|
pub let seek_set : Whence = _SEEK_SET()

///|
pub let seek_cur : Whence = _SEEK_CUR()

///|
pub let seek_end : Whence = _SEEK_END()
