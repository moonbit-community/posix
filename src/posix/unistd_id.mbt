// groups id

///| https://man7.org/linux/man-pages/man2/getgid.2.html
pub extern "c" fn getgid() -> Gid = "moonbit_posix_getgid"

///| https://man7.org/linux/man-pages/man2/setgid.2.html
pub extern "c" fn setgid(gid : Gid) -> Rslt = "moonbit_posix_setgid"

///| https://man7.org/linux/man-pages/man2/getegid.2.html
pub extern "c" fn getegid() -> Gid = "moonbit_posix_getegid"

///| https://man7.org/linux/man-pages/man2/setegid.2.html
pub extern "c" fn setegid(gid : Gid) -> Rslt = "moonbit_posix_setegid"

// user id

///| https://man7.org/linux/man-pages/man2/getuid.2.html
pub extern "c" fn getuid() -> Uid = "moonbit_posix_getuid"

///| https://man7.org/linux/man-pages/man2/geteuid.2.html
pub extern "c" fn geteuid() -> Uid = "moonbit_posix_geteuid"

///| https://man7.org/linux/man-pages/man2/setuid.2.html
pub extern "c" fn setuid(uid : Uid) -> Rslt = "moonbit_posix_setuid"

///| https://man7.org/linux/man-pages/man2/seteuid.2.html
pub extern "c" fn seteuid(uid : Uid) -> Rslt = "moonbit_posix_seteuid"

// process groups id

///| https://man7.org/linux/man-pages/man3/setpgid.3p.html
pub extern "c" fn setpgid(pid : Pid, pgid : Pid) -> Rslt = "moonbit_posix_setpgid"

///| https://man7.org/linux/man-pages/man3/getpgid.3p.html
pub extern "c" fn getpgid(pid : Pid) -> Pid = "moonbit_posix_getpgid"

// session id

///| https://man7.org/linux/man-pages/man2/getsid.2.html
pub extern "c" fn getsid(pid : Pid) -> Sid = "moonbit_posix_getsid"

///| https://man7.org/linux/man-pages/man2/setsid.2.html
pub extern "c" fn setsid() -> Sid = "moonbit_posix_setsid"

// process id

///| https://man7.org/linux/man-pages/man3/getpid.3p.html
pub extern "c" fn getpid() -> Pid = "moonbit_posix_getpid"

///| https://man7.org/linux/man-pages/man3/getppid.3p.html
pub extern "c" fn getppid() -> Pid = "moonbit_posix_getppid"
