///|
/// https://man7.org/linux/man-pages/man3/getcwd.3.html
pub extern "c" fn getcwd(buf : Ptr[Byte], size : Size) -> Ptr[Byte] = "moonbit_posix_getcwd"

///|
/// https://man7.org/linux/man-pages/man2/fork.2.html
pub extern "c" fn fork() -> Pid = "moonbit_posix_fork"

///|
/// https://man7.org/linux/man-pages/man2/gethostname.2.html
pub extern "c" fn gethostname(buf : Ptr[Byte], size : Size) -> Rslt = "moonbit_posix_gethostname"

///|
/// https://man7.org/linux/man-pages/man2/sethostname.2.html
pub extern "c" fn sethostname(name : ConstPtr[Byte], len : Size) -> Rslt = "moonbit_posix_sethostname"

///|
/// https://man7.org/linux/man-pages/man2/getgroups.2.html
pub extern "c" fn getgroups(size : Size, buf : Ptr[Gid]) -> OptSize = "moonbit_posix_getgroups"

///|
/// https://man7.org/linux/man-pages/man2/nice.2.html
pub extern "c" fn nice(inc : Int) -> Rslt = "moonbit_posix_nice"

///|
/// https://man7.org/linux/man-pages/man2/pause.2.html
pub extern "c" fn pause() -> Rslt = "moonbit_posix_pause"

///|
/// https://man7.org/linux/man-pages/man3/sleep.3.html
pub extern "c" fn sleep(seconds : UInt) -> UInt = "moonbit_posix_sleep"

///|
/// https://man7.org/linux/man-pages/man2/sync.2.html
pub extern "c" fn sync() = "moonbit_posix_sync"

///|
/// https://man7.org/linux/man-pages/man3/confstr.3.html
pub extern "c" fn confstr(name : Int, buf : Ptr[Byte], size : Size) -> Size = "moonbit_posix_confstr"

///|
/// https://man7.org/linux/man-pages/man3/ttyname_r.3.html
pub extern "c" fn ttyname_r(fd : Fd, buf : Ptr[Byte], size : Size) -> Rslt = "moonbit_posix_ttyname_r"
