///|
/// https://man7.org/linux/man-pages/man2/mkdir.2.html
pub extern "c" fn mkdirat(dirfd : Fd, path : CStr, mode : Mode) -> Rslt = "moonbit_posix_mkdirat"
