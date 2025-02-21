///|
extern "c" fn _S_IRWXU() -> Mode = "moonbit_posix_S_IRWXU"

///|
extern "c" fn _S_IRUSR() -> Mode = "moonbit_posix_S_IRUSR"

///|
extern "c" fn _S_IWUSR() -> Mode = "moonbit_posix_S_IWUSR"

///|
extern "c" fn _S_IXUSR() -> Mode = "moonbit_posix_S_IXUSR"

///|
pub let s_irwxu : Mode = _S_IRWXU()

///|
pub let s_irusr : Mode = _S_IRUSR()

///|
pub let s_iwusr : Mode = _S_IWUSR()

///|
pub let s_ixusr : Mode = _S_IXUSR()

///|
extern "c" fn _S_IRWXG() -> Mode = "moonbit_posix_S_IRWXG"

///|
extern "c" fn _S_IRGRP() -> Mode = "moonbit_posix_S_IRGRP"

///|
extern "c" fn _S_IWGRP() -> Mode = "moonbit_posix_S_IWGRP"

///|
extern "c" fn _S_IXGRP() -> Mode = "moonbit_posix_S_IXGRP"

///|
pub let s_irwxg : Mode = _S_IRWXG()

///|
pub let s_irgrp : Mode = _S_IRGRP()

///|
pub let s_iwgrp : Mode = _S_IWGRP()

///|
pub let s_ixgrp : Mode = _S_IXGRP()

///|
extern "c" fn _S_IRWXO() -> Mode = "moonbit_posix_S_IRWXO"

///|
extern "c" fn _S_IROTH() -> Mode = "moonbit_posix_S_IROTH"

///|
extern "c" fn _S_IWOTH() -> Mode = "moonbit_posix_S_IWOTH"

///|
extern "c" fn _S_IXOTH() -> Mode = "moonbit_posix_S_IXOTH"

///|
pub let s_irwxo : Mode = _S_IRWXO()

///|
pub let s_iroth : Mode = _S_IROTH()

///|
pub let s_iwoth : Mode = _S_IWOTH()

///|
pub let s_ixoth : Mode = _S_IXOTH()

///|
pub let file_default_mode : Mode = 0o644

///|
pub let directory_default_mode : Mode = 0o755

///|
extern "c" fn _S_ISUID() -> Mode = "moonbit_posix_S_ISUID"

///|
extern "c" fn _S_ISGID() -> Mode = "moonbit_posix_S_ISGID"

///|
extern "c" fn _S_ISVTX() -> Mode = "moonbit_posix_S_ISVTX"

///|
pub let s_isuid : Mode = _S_ISUID()

///|
pub let s_isgid : Mode = _S_ISGID()

///|
pub let s_issvt : Mode = _S_ISVTX()

///|
extern "c" fn _S_IFMT() -> Mode = "moonbit_posix_S_IFMT"

///|
extern "c" fn _S_IFDIR() -> Mode = "moonbit_posix_S_IFDIR"

///|
extern "c" fn _S_IFCHR() -> Mode = "moonbit_posix_S_IFCHR"

///|
extern "c" fn _S_IFBLK() -> Mode = "moonbit_posix_S_IFBLK"

///|
extern "c" fn _S_IFREG() -> Mode = "moonbit_posix_S_IFREG"

///|
extern "c" fn _S_IFIFO() -> Mode = "moonbit_posix_S_IFIFO"

///|
extern "c" fn _S_IFLNK() -> Mode = "moonbit_posix_S_IFLNK"

///|
pub let s_ifmt : Mode = _S_IFMT()

///|
pub let s_ifdir : Mode = _S_IFDIR()

///|
pub let s_ifchr : Mode = _S_IFCHR()

///|
pub let s_ifblk : Mode = _S_IFBLK()

///|
pub let s_ifreg : Mode = _S_IFREG()

///|
pub let s_ififo : Mode = _S_IFIFO()

///|
pub let s_iflnk : Mode = _S_IFLNK()
