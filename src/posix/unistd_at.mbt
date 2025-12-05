///|
/// https://man7.org/linux/man-pages/man3/access.3p.html
pub extern "c" fn faccessat(
  dirfd : Fd,
  path : CStr,
  amode : AccessMode,
  flag : AtFlag,
) -> Rslt = "moonbit_posix_faccessat"

///|
/// https://man7.org/linux/man-pages/man2/unlink.2.html
pub extern "c" fn unlinkat(dirfd : Fd, path : CStr, flags : Int) -> Rslt = "moonbit_posix_unlinkat"

///|
/// https://man7.org/linux/man-pages/man3/chown.3p.html
pub extern "c" fn fchownat(
  dirfd : Fd,
  path : CStr,
  owner : Uid,
  group : Gid,
  flags : AtFlag,
) -> Rslt = "moonbit_posix_fchownat"

///|
/// https://man7.org/linux/man-pages/man2/link.2.html
pub extern "c" fn linkat(
  olddirfd : Fd,
  oldpath : CStr,
  newdirfd : Fd,
  newpath : CStr,
  flags : AtFlag,
) -> Rslt = "moonbit_posix_linkat"
