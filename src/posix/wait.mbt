// https://man7.org/linux/man-pages/man2/wait.2.html
///|
pub extern "c" fn wait(wstatus : Ptr[Int]) -> Pid = "moonbit_posix_wait"
