///|
extern type DIR

///| https://man7.org/linux/man-pages/man3/fdopendir.3p.html
extern "c" fn fdopendir(fd : Fd) -> Ptr[DIR] = "moonbit_posix_fdopendir"
