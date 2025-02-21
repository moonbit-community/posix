///|
pub extern "c" fn get_errno() -> Errno = "moonbit_posix_get_errno"

///|
pub extern "c" fn set_errno(e : Errno) = "moonbit_posix_set_errno"

///|
extern "c" fn _EPERM() -> Errno = "moonbit_posix_EPERM"

///|
extern "c" fn _ENOENT() -> Errno = "moonbit_posix_ENOENT"

///|
extern "c" fn _ESRCH() -> Errno = "moonbit_posix_ESRCH"

///|
extern "c" fn _EINTR() -> Errno = "moonbit_posix_EINTR"

///|
extern "c" fn _EIO() -> Errno = "moonbit_posix_EIO"

///|
extern "c" fn _ENXIO() -> Errno = "moonbit_posix_ENXIO"

///|
extern "c" fn _E2BIG() -> Errno = "moonbit_posix_E2BIG"

///|
extern "c" fn _ENOEXEC() -> Errno = "moonbit_posix_ENOEXEC"

///|
extern "c" fn _EBADF() -> Errno = "moonbit_posix_EBADF"

///|
extern "c" fn _ECHILD() -> Errno = "moonbit_posix_ECHILD"

///|
extern "c" fn _EAGAIN() -> Errno = "moonbit_posix_EAGAIN"

///|
extern "c" fn _ENOMEM() -> Errno = "moonbit_posix_ENOMEM"

///|
extern "c" fn _EACCES() -> Errno = "moonbit_posix_EACCES"

///|
extern "c" fn _EFAULT() -> Errno = "moonbit_posix_EFAULT"

///|
extern "c" fn _ENOTBLK() -> Errno = "moonbit_posix_ENOTBLK"

///|
extern "c" fn _EBUSY() -> Errno = "moonbit_posix_EBUSY"

///|
extern "c" fn _EEXIST() -> Errno = "moonbit_posix_EEXIST"

///|
extern "c" fn _EXDEV() -> Errno = "moonbit_posix_EXDEV"

///|
extern "c" fn _ENODEV() -> Errno = "moonbit_posix_ENODEV"

///|
extern "c" fn _ENOTDIR() -> Errno = "moonbit_posix_ENOTDIR"

///|
extern "c" fn _EISDIR() -> Errno = "moonbit_posix_EISDIR"

///|
extern "c" fn _EINVAL() -> Errno = "moonbit_posix_EINVAL"

///|
extern "c" fn _ENFILE() -> Errno = "moonbit_posix_ENFILE"

///|
extern "c" fn _EMFILE() -> Errno = "moonbit_posix_EMFILE"

///|
extern "c" fn _ENOTTY() -> Errno = "moonbit_posix_ENOTTY"

///|
extern "c" fn _ETXTBSY() -> Errno = "moonbit_posix_ETXTBSY"

///|
extern "c" fn _EFBIG() -> Errno = "moonbit_posix_EFBIG"

///|
extern "c" fn _ENOSPC() -> Errno = "moonbit_posix_ENOSPC"

///|
extern "c" fn _ESPIPE() -> Errno = "moonbit_posix_ESPIPE"

///|
extern "c" fn _EROFS() -> Errno = "moonbit_posix_EROFS"

///|
extern "c" fn _EMLINK() -> Errno = "moonbit_posix_EMLINK"

///|
extern "c" fn _EPIPE() -> Errno = "moonbit_posix_EPIPE"

///|
extern "c" fn _EDOM() -> Errno = "moonbit_posix_EDOM"

///|
extern "c" fn _ERANGE() -> Errno = "moonbit_posix_ERANGE"

///|
extern "c" fn _EDEADLK() -> Errno = "moonbit_posix_EDEADLK"

///|
extern "c" fn _ENAMETOOLONG() -> Errno = "moonbit_posix_ENAMETOOLONG"

///|
extern "c" fn _ENOLCK() -> Errno = "moonbit_posix_ENOLCK"

///|
extern "c" fn _ENOSYS() -> Errno = "moonbit_posix_ENOSYS"

///|
extern "c" fn _ENOTEMPTY() -> Errno = "moonbit_posix_ENOTEMPTY"

///|
extern "c" fn _ELOOP() -> Errno = "moonbit_posix_ELOOP"

///|
extern "c" fn _EWOULDBLOCK() -> Errno = "moonbit_posix_EWOULDBLOCK"

///|
extern "c" fn _ENOMSG() -> Errno = "moonbit_posix_ENOMSG"

///|
extern "c" fn _EIDRM() -> Errno = "moonbit_posix_EIDRM"

///|
extern "c" fn _ECHRNG() -> Errno = "moonbit_posix_ECHRNG"

///|
extern "c" fn _EL2NSYNC() -> Errno = "moonbit_posix_EL2NSYNC"

///|
extern "c" fn _EL3HLT() -> Errno = "moonbit_posix_EL3HLT"

///|
extern "c" fn _EL3RST() -> Errno = "moonbit_posix_EL3RST"

///|
extern "c" fn _ELNRNG() -> Errno = "moonbit_posix_ELNRNG"

///|
extern "c" fn _EUNATCH() -> Errno = "moonbit_posix_EUNATCH"

///|
extern "c" fn _ENOCSI() -> Errno = "moonbit_posix_ENOCSI"

///|
extern "c" fn _EL2HLT() -> Errno = "moonbit_posix_EL2HLT"

///|
extern "c" fn _EBADE() -> Errno = "moonbit_posix_EBADE"

///|
extern "c" fn _EBADR() -> Errno = "moonbit_posix_EBADR"

///|
extern "c" fn _EXFULL() -> Errno = "moonbit_posix_EXFULL"

///|
extern "c" fn _ENOANO() -> Errno = "moonbit_posix_ENOANO"

///|
extern "c" fn _EBADRQC() -> Errno = "moonbit_posix_EBADRQC"

///|
extern "c" fn _EBADSLT() -> Errno = "moonbit_posix_EBADSLT"

///|
extern "c" fn _EDEADLOCK() -> Errno = "moonbit_posix_EDEADLOCK"

///|
extern "c" fn _EBFONT() -> Errno = "moonbit_posix_EBFONT"

///|
extern "c" fn _ENOSTR() -> Errno = "moonbit_posix_ENOSTR"

///|
extern "c" fn _ENODATA() -> Errno = "moonbit_posix_ENODATA"

///|
extern "c" fn _ETIME() -> Errno = "moonbit_posix_ETIME"

///|
extern "c" fn _ENOSR() -> Errno = "moonbit_posix_ENOSR"

///|
extern "c" fn _ENONET() -> Errno = "moonbit_posix_ENONET"

///|
extern "c" fn _ENOPKG() -> Errno = "moonbit_posix_ENOPKG"

///|
extern "c" fn _EREMOTE() -> Errno = "moonbit_posix_EREMOTE"

///|
extern "c" fn _ENOLINK() -> Errno = "moonbit_posix_ENOLINK"

///|
extern "c" fn _EADV() -> Errno = "moonbit_posix_EADV"

///|
extern "c" fn _ESRMNT() -> Errno = "moonbit_posix_ESRMNT"

///|
extern "c" fn _ECOMM() -> Errno = "moonbit_posix_ECOMM"

///|
extern "c" fn _EPROTO() -> Errno = "moonbit_posix_EPROTO"

///|
extern "c" fn _EMULTIHOP() -> Errno = "moonbit_posix_EMULTIHOP"

///|
extern "c" fn _EDOTDOT() -> Errno = "moonbit_posix_EDOTDOT"

///|
extern "c" fn _EBADMSG() -> Errno = "moonbit_posix_EBADMSG"

///|
extern "c" fn _EOVERFLOW() -> Errno = "moonbit_posix_EOVERFLOW"

///|
extern "c" fn _ENOTUNIQ() -> Errno = "moonbit_posix_ENOTUNIQ"

///|
extern "c" fn _EBADFD() -> Errno = "moonbit_posix_EBADFD"

///|
extern "c" fn _EREMCHG() -> Errno = "moonbit_posix_EREMCHG"

///|
extern "c" fn _ELIBACC() -> Errno = "moonbit_posix_ELIBACC"

///|
extern "c" fn _ELIBBAD() -> Errno = "moonbit_posix_ELIBBAD"

///|
extern "c" fn _ELIBSCN() -> Errno = "moonbit_posix_ELIBSCN"

///|
extern "c" fn _ELIBMAX() -> Errno = "moonbit_posix_ELIBMAX"

///|
extern "c" fn _ELIBEXEC() -> Errno = "moonbit_posix_ELIBEXEC"

///|
extern "c" fn _EILSEQ() -> Errno = "moonbit_posix_EILSEQ"

///|
extern "c" fn _ERESTART() -> Errno = "moonbit_posix_ERESTART"

///|
extern "c" fn _ESTRPIPE() -> Errno = "moonbit_posix_ESTRPIPE"

///|
extern "c" fn _EUSERS() -> Errno = "moonbit_posix_EUSERS"

///|
extern "c" fn _ENOTSOCK() -> Errno = "moonbit_posix_ENOTSOCK"

///|
extern "c" fn _EDESTADDRREQ() -> Errno = "moonbit_posix_EDESTADDRREQ"

///|
extern "c" fn _EMSGSIZE() -> Errno = "moonbit_posix_EMSGSIZE"

///|
extern "c" fn _EPROTOTYPE() -> Errno = "moonbit_posix_EPROTOTYPE"

///|
extern "c" fn _ENOPROTOOPT() -> Errno = "moonbit_posix_ENOPROTOOPT"

///|
extern "c" fn _EPROTONOSUPPORT() -> Errno = "moonbit_posix_EPROTONOSUPPORT"

///|
extern "c" fn _ESOCKTNOSUPPORT() -> Errno = "moonbit_posix_ESOCKTNOSUPPORT"

///|
extern "c" fn _EOPNOTSUPP() -> Errno = "moonbit_posix_EOPNOTSUPP"

///|
extern "c" fn _EPFNOSUPPORT() -> Errno = "moonbit_posix_EPFNOSUPPORT"

///|
extern "c" fn _EAFNOSUPPORT() -> Errno = "moonbit_posix_EAFNOSUPPORT"

///|
extern "c" fn _EADDRINUSE() -> Errno = "moonbit_posix_EADDRINUSE"

///|
extern "c" fn _EADDRNOTAVAIL() -> Errno = "moonbit_posix_EADDRNOTAVAIL"

///|
extern "c" fn _ENETDOWN() -> Errno = "moonbit_posix_ENETDOWN"

///|
extern "c" fn _ENETUNREACH() -> Errno = "moonbit_posix_ENETUNREACH"

///|
extern "c" fn _ENETRESET() -> Errno = "moonbit_posix_ENETRESET"

///|
extern "c" fn _ECONNABORTED() -> Errno = "moonbit_posix_ECONNABORTED"

///|
extern "c" fn _ECONNRESET() -> Errno = "moonbit_posix_ECONNRESET"

///|
extern "c" fn _ENOBUFS() -> Errno = "moonbit_posix_ENOBUFS"

///|
extern "c" fn _EISCONN() -> Errno = "moonbit_posix_EISCONN"

///|
extern "c" fn _ENOTCONN() -> Errno = "moonbit_posix_ENOTCONN"

///|
extern "c" fn _ESHUTDOWN() -> Errno = "moonbit_posix_ESHUTDOWN"

///|
extern "c" fn _ETOOMANYREFS() -> Errno = "moonbit_posix_ETOOMANYREFS"

///|
extern "c" fn _ETIMEDOUT() -> Errno = "moonbit_posix_ETIMEDOUT"

///|
extern "c" fn _ECONNREFUSED() -> Errno = "moonbit_posix_ECONNREFUSED"

///|
extern "c" fn _EHOSTDOWN() -> Errno = "moonbit_posix_EHOSTDOWN"

///|
extern "c" fn _EHOSTUNREACH() -> Errno = "moonbit_posix_EHOSTUNREACH"

///|
extern "c" fn _EALREADY() -> Errno = "moonbit_posix_EALREADY"

///|
extern "c" fn _EINPROGRESS() -> Errno = "moonbit_posix_EINPROGRESS"

///|
extern "c" fn _ESTALE() -> Errno = "moonbit_posix_ESTALE"

///|
extern "c" fn _EUCLEAN() -> Errno = "moonbit_posix_EUCLEAN"

///|
extern "c" fn _ENOTNAM() -> Errno = "moonbit_posix_ENOTNAM"

///|
extern "c" fn _ENAVAIL() -> Errno = "moonbit_posix_ENAVAIL"

///|
extern "c" fn _EISNAM() -> Errno = "moonbit_posix_EISNAM"

///|
extern "c" fn _EREMOTEIO() -> Errno = "moonbit_posix_EREMOTEIO"

///|
extern "c" fn _EDQUOT() -> Errno = "moonbit_posix_EDQUOT"

///|
extern "c" fn _ENOMEDIUM() -> Errno = "moonbit_posix_ENOMEDIUM"

///|
extern "c" fn _EMEDIUMTYPE() -> Errno = "moonbit_posix_EMEDIUMTYPE"

///|
extern "c" fn _ECANCELED() -> Errno = "moonbit_posix_ECANCELED"

///|
extern "c" fn _ENOKEY() -> Errno = "moonbit_posix_ENOKEY"

///|
extern "c" fn _EKEYEXPIRED() -> Errno = "moonbit_posix_EKEYEXPIRED"

///|
extern "c" fn _EKEYREVOKED() -> Errno = "moonbit_posix_EKEYREVOKED"

///|
extern "c" fn _EKEYREJECTED() -> Errno = "moonbit_posix_EKEYREJECTED"

///|
extern "c" fn _EOWNERDEAD() -> Errno = "moonbit_posix_EOWNERDEAD"

///|
extern "c" fn _ENOTRECOVERABLE() -> Errno = "moonbit_posix_ENOTRECOVERABLE"

///|
extern "c" fn _ERFKILL() -> Errno = "moonbit_posix_ERFKILL"

///|
extern "c" fn _EHWPOISON() -> Errno = "moonbit_posix_EHWPOISON"

///|
extern "c" fn _ENOTSUP() -> Errno = "moonbit_posix_ENOTSUP"

// doc is generated from `errno -l`

///| EPERM 1 Operation not permitted
pub let eperm : Errno = _EPERM()

///| ENOENT 2 No such file or directory
pub let enoent : Errno = _ENOENT()

///| ESRCH 3 No such process
pub let esrch : Errno = _ESRCH()

///| EINTR 4 Interrupted system call
pub let eintr : Errno = _EINTR()

///| EIO 5 Input/output error
pub let eio : Errno = _EIO()

///| ENXIO 6 No such device or address
pub let enxio : Errno = _ENXIO()

///| E2BIG 7 Argument list too long
pub let e2big : Errno = _E2BIG()

///| ENOEXEC 8 Exec format error
pub let enoexec : Errno = _ENOEXEC()

///| EBADF 9 Bad file descriptor
pub let ebadf : Errno = _EBADF()

///| ECHILD 10 No child processes
pub let echild : Errno = _ECHILD()

///| EAGAIN 11 Resource temporarily unavailable
pub let eagain : Errno = _EAGAIN()

///| ENOMEM 12 Cannot allocate memory
pub let enomem : Errno = _ENOMEM()

///| EACCES 13 Permission denied
pub let eacces : Errno = _EACCES()

///| EFAULT 14 Bad address
pub let efault : Errno = _EFAULT()

///| ENOTBLK 15 Block device required
pub let enotblk : Errno = _ENOTBLK()

///| EBUSY 16 Device or resource busy
pub let ebusy : Errno = _EBUSY()

///| EEXIST 17 File exists
pub let eexist : Errno = _EEXIST()

///| EXDEV 18 Invalid cross-device link
pub let exdev : Errno = _EXDEV()

///| ENODEV 19 No such device
pub let enodev : Errno = _ENODEV()

///| ENOTDIR 20 Not a directory
pub let enotdir : Errno = _ENOTDIR()

///| EISDIR 21 Is a directory
pub let eisdir : Errno = _EISDIR()

///| EINVAL 22 Invalid argument
pub let einval : Errno = _EINVAL()

///| ENFILE 23 Too many open files in system
pub let enfile : Errno = _ENFILE()

///| EMFILE 24 Too many open files
pub let emfile : Errno = _EMFILE()

///| ENOTTY 25 Inappropriate ioctl for device
pub let enotty : Errno = _ENOTTY()

///| ETXTBSY 26 Text file busy
pub let etxtbsy : Errno = _ETXTBSY()

///| EFBIG 27 File too large
pub let efbig : Errno = _EFBIG()

///| ENOSPC 28 No space left on device
pub let enospc : Errno = _ENOSPC()

///| ESPIPE 29 Illegal seek
pub let espipe : Errno = _ESPIPE()

///| EROFS 30 Read-only file system
pub let erofs : Errno = _EROFS()

///| EMLINK 31 Too many links
pub let emlink : Errno = _EMLINK()

///| EPIPE 32 Broken pipe
pub let epipe : Errno = _EPIPE()

///| EDOM 33 Numerical argument out of domain
pub let edom : Errno = _EDOM()

///| ERANGE 34 Numerical result out of range
pub let erange : Errno = _ERANGE()

///| EDEADLK 35 Resource deadlock avoided
pub let edeadlk : Errno = _EDEADLK()

///| ENAMETOOLONG 36 File name too long
pub let enametoolong : Errno = _ENAMETOOLONG()

///| ENOLCK 37 No locks available
pub let enolck : Errno = _ENOLCK()

///| ENOSYS 38 Function not implemented
pub let enosys : Errno = _ENOSYS()

///| ENOTEMPTY 39 Directory not empty
pub let enotempty : Errno = _ENOTEMPTY()

///| ELOOP 40 Too many levels of symbolic links
pub let eloop : Errno = _ELOOP()

///| EWOULDBLOCK 11 Resource temporarily unavailable
pub let ewouldblock : Errno = _EWOULDBLOCK()

///| ENOMSG 42 No message of desired type
pub let enomsg : Errno = _ENOMSG()

///| EIDRM 43 Identifier removed
pub let eidrm : Errno = _EIDRM()

///| ECHRNG 44 Channel number out of range
pub let echrng : Errno = _ECHRNG()

///| EL2NSYNC 45 Level 2 not synchronized
pub let el2nsync : Errno = _EL2NSYNC()

///| EL3HLT 46 Level 3 halted
pub let el3hlt : Errno = _EL3HLT()

///| EL3RST 47 Level 3 reset
pub let el3rst : Errno = _EL3RST()

///| ELNRNG 48 Link number out of range
pub let elnrng : Errno = _ELNRNG()

///| EUNATCH 49 Protocol driver not attached
pub let eunatch : Errno = _EUNATCH()

///| ENOCSI 50 No CSI structure available
pub let enocsi : Errno = _ENOCSI()

///| EL2HLT 51 Level 2 halted
pub let el2hlt : Errno = _EL2HLT()

///| EBADE 52 Invalid exchange
pub let ebade : Errno = _EBADE()

///| EBADR 53 Invalid request descriptor
pub let ebadr : Errno = _EBADR()

///| EXFULL 54 Exchange full
pub let exfull : Errno = _EXFULL()

///| ENOANO 55 No anode
pub let enoano : Errno = _ENOANO()

///| EBADRQC 56 Invalid request code
pub let ebadrqc : Errno = _EBADRQC()

///| EBADSLT 57 Invalid slot
pub let ebadslt : Errno = _EBADSLT()

///| EDEADLOCK 35 Resource deadlock avoided
pub let edeadlock : Errno = _EDEADLOCK()

///| EBFONT 59 Bad font file format
pub let ebfont : Errno = _EBFONT()

///| ENOSTR 60 Device not a stream
pub let enostr : Errno = _ENOSTR()

///| ENODATA 61 No data available
pub let enodata : Errno = _ENODATA()

///| ETIME 62 Timer expired
pub let etime : Errno = _ETIME()

///| ENOSR 63 Out of streams resources
pub let enosr : Errno = _ENOSR()

///| ENONET 64 Machine is not on the network
pub let enonet : Errno = _ENONET()

///| ENOPKG 65 Package not installed
pub let enopkg : Errno = _ENOPKG()

///| EREMOTE 66 Object is remote
pub let eremote : Errno = _EREMOTE()

///| ENOLINK 67 Link has been severed
pub let enolink : Errno = _ENOLINK()

///| EADV 68 Advertise error
pub let eadv : Errno = _EADV()

///| ESRMNT 69 Srmount error
pub let esrmnt : Errno = _ESRMNT()

///| ECOMM 70 Communication error on send
pub let ecomm : Errno = _ECOMM()

///| EPROTO 71 Protocol error
pub let eproto : Errno = _EPROTO()

///| EMULTIHOP 72 Multihop attempted
pub let emultihop : Errno = _EMULTIHOP()

///| EDOTDOT 73 RFS specific error
pub let edotdot : Errno = _EDOTDOT()

///| EBADMSG 74 Bad message
pub let ebadmsg : Errno = _EBADMSG()

///| EOVERFLOW 75 Value too large for defined data type
pub let eoverflow : Errno = _EOVERFLOW()

///| ENOTUNIQ 76 Name not unique on network
pub let enotuniq : Errno = _ENOTUNIQ()

///| EBADFD 77 File descriptor in bad state
pub let ebadfd : Errno = _EBADFD()

///| EREMCHG 78 Remote address changed
pub let eremchg : Errno = _EREMCHG()

///| ELIBACC 79 Can not access a needed shared library
pub let elibacc : Errno = _ELIBACC()

///| ELIBBAD 80 Accessing a corrupted shared library
pub let elibbad : Errno = _ELIBBAD()

///| ELIBSCN 81 .lib section in a.out corrupted
pub let elibscn : Errno = _ELIBSCN()

///| ELIBMAX 82 Attempting to link in too many shared libraries
pub let elibmax : Errno = _ELIBMAX()

///| ELIBEXEC 83 Cannot exec a shared library directly
pub let elibexec : Errno = _ELIBEXEC()

///| EILSEQ 84 Invalid or incomplete multibyte or wide character
pub let eilseq : Errno = _EILSEQ()

///| ERESTART 85 Interrupted system call should be restarted
pub let erestart : Errno = _ERESTART()

///| ESTRPIPE 86 Streams pipe error
pub let estrpipe : Errno = _ESTRPIPE()

///| EUSERS 87 Too many users
pub let eusers : Errno = _EUSERS()

///| ENOTSOCK 88 Socket operation on non-socket
pub let enotsock : Errno = _ENOTSOCK()

///| EDESTADDRREQ 89 Destination address required
pub let edestaddrreq : Errno = _EDESTADDRREQ()

///| EMSGSIZE 90 Message too long
pub let emsgsize : Errno = _EMSGSIZE()

///| EPROTOTYPE 91 Protocol wrong type for socket
pub let eprototype : Errno = _EPROTOTYPE()

///| ENOPROTOOPT 92 Protocol not available
pub let enoprotoopt : Errno = _ENOPROTOOPT()

///| EPROTONOSUPPORT 93 Protocol not supported
pub let eprotonosupport : Errno = _EPROTONOSUPPORT()

///| ESOCKTNOSUPPORT 94 Socket type not supported
pub let esocktnosupport : Errno = _ESOCKTNOSUPPORT()

///| EOPNOTSUPP 95 Operation not supported
pub let eopnotsupp : Errno = _EOPNOTSUPP()

///| EPFNOSUPPORT 96 Protocol family not supported
pub let epfnosupport : Errno = _EPFNOSUPPORT()

///| EAFNOSUPPORT 97 Address family not supported by protocol
pub let eafnosupport : Errno = _EAFNOSUPPORT()

///| EADDRINUSE 98 Address already in use
pub let eaddrinuse : Errno = _EADDRINUSE()

///| EADDRNOTAVAIL 99 Cannot assign requested address
pub let eaddrnotavail : Errno = _EADDRNOTAVAIL()

///| ENETDOWN 100 Network is down
pub let enetdown : Errno = _ENETDOWN()

///| ENETUNREACH 101 Network is unreachable
pub let enetunreach : Errno = _ENETUNREACH()

///| ENETRESET 102 Network dropped connection on reset
pub let enetreset : Errno = _ENETRESET()

///| ECONNABORTED 103 Software caused connection abort
pub let econnaborted : Errno = _ECONNABORTED()

///| ECONNRESET 104 Connection reset by peer
pub let econnreset : Errno = _ECONNRESET()

///| ENOBUFS 105 No buffer space available
pub let enobufs : Errno = _ENOBUFS()

///| EISCONN 106 Transport endpoint is already connected
pub let eisconn : Errno = _EISCONN()

///| ENOTCONN 107 Transport endpoint is not connected
pub let enotconn : Errno = _ENOTCONN()

///| ESHUTDOWN 108 Cannot send after transport endpoint shutdown
pub let eshutdown : Errno = _ESHUTDOWN()

///| ETOOMANYREFS 109 Too many references: cannot splice
pub let etoomanyrefs : Errno = _ETOOMANYREFS()

///| ETIMEDOUT 110 Connection timed out
pub let etimedout : Errno = _ETIMEDOUT()

///| ECONNREFUSED 111 Connection refused
pub let econnrefused : Errno = _ECONNREFUSED()

///| EHOSTDOWN 112 Host is down
pub let ehostdown : Errno = _EHOSTDOWN()

///| EHOSTUNREACH 113 No route to host
pub let ehostunreach : Errno = _EHOSTUNREACH()

///| EALREADY 114 Operation already in progress
pub let ealready : Errno = _EALREADY()

///| EINPROGRESS 115 Operation now in progress
pub let einprogress : Errno = _EINPROGRESS()

///| ESTALE 116 Stale file handle
pub let estale : Errno = _ESTALE()

///| EUCLEAN 117 Structure needs cleaning
pub let euclean : Errno = _EUCLEAN()

///| ENOTNAM 118 Not a XENIX named type file
pub let enotnam : Errno = _ENOTNAM()

///| ENAVAIL 119 No XENIX semaphores available
pub let enavail : Errno = _ENAVAIL()

///| EISNAM 120 Is a named type file
pub let eisnam : Errno = _EISNAM()

///| EREMOTEIO 121 Remote I/O error
pub let eremoteio : Errno = _EREMOTEIO()

///| EDQUOT 122 Disk quota exceeded
pub let edquot : Errno = _EDQUOT()

///| ENOMEDIUM 123 No medium found
pub let enomedium : Errno = _ENOMEDIUM()

///| EMEDIUMTYPE 124 Wrong medium type
pub let emediumtype : Errno = _EMEDIUMTYPE()

///| ECANCELED 125 Operation canceled
pub let ecanceled : Errno = _ECANCELED()

///| ENOKEY 126 Required key not available
pub let enokey : Errno = _ENOKEY()

///| EKEYEXPIRED 127 Key has expired
pub let ekeyexpired : Errno = _EKEYEXPIRED()

///| EKEYREVOKED 128 Key has been revoked
pub let ekeyrevoked : Errno = _EKEYREVOKED()

///| EKEYREJECTED 129 Key was rejected by service
pub let ekeyrejected : Errno = _EKEYREJECTED()

///| EOWNERDEAD 130 Owner died
pub let eownerdead : Errno = _EOWNERDEAD()

///| ENOTRECOVERABLE 131 State not recoverable
pub let enotrecoverable : Errno = _ENOTRECOVERABLE()

///| ERFKILL 132 Operation not possible due to RF-kill
pub let erfkill : Errno = _ERFKILL()

///| EHWPOISON 133 Memory page has hardware error
pub let ehwpoison : Errno = _EHWPOISON()

///| ENOTSUP 95 Operation not supported
pub let enotsup : Errno = _ENOTSUP()
