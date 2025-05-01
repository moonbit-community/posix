///|
pub extern "c" fn get_errno() -> Errno = "moonbit_posix_get_errno"

///|
pub extern "c" fn set_errno(e : Errno) = "moonbit_posix_set_errno"
