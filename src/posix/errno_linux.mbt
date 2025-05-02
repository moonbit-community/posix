///| EPERM 1 Operation not permitted
pub const EPERM = 1

///| ENOENT 2 No such file or directory
pub const ENOENT = 2

///| ESRCH 3 No such process
pub const ESRCH = 3

///| EINTR 4 Interrupted system call
pub const EINTR = 4

///| EIO 5 Input/output error
pub const EIO = 5

///| ENXIO 6 No such device or address
pub const ENXIO = 6

///| E2BIG 7 Argument list too long
pub const E2BIG = 7

///| ENOEXEC 8 Exec format error
pub const ENOEXEC = 8

///| EBADF 9 Bad file descriptor
pub const EBADF = 9

///| ECHILD 10 No child processes
pub const ECHILD = 10

///| EAGAIN 11 Resource temporarily unavailable
pub const EAGAIN = 11

///| ENOMEM 12 Cannot allocate memory
pub const ENOMEM = 12

///| EACCES 13 Permission denied
pub const EACCES = 13

///| EFAULT 14 Bad address
pub const EFAULT = 14

///| ENOTBLK 15 Block device required
pub const ENOTBLK = 15

///| EBUSY 16 Device or resource busy
pub const EBUSY = 16

///| EEXIST 17 File exists
pub const EEXIST = 17

///| EXDEV 18 Invalid cross-device link
pub const EXDEV = 18

///| ENODEV 19 No such device
pub const ENODEV = 19

///| ENOTDIR 20 Not a directory
pub const ENOTDIR = 20

///| EISDIR 21 Is a directory
pub const EISDIR = 21

///| EINVAL 22 Invalid argument
pub const EINVAL = 22

///| ENFILE 23 Too many open files in system
pub const ENFILE = 23

///| EMFILE 24 Too many open files
pub const EMFILE = 24

///| ENOTTY 25 Inappropriate ioctl for device
pub const ENOTTY = 25

///| ETXTBSY 26 Text file busy
pub const ETXTBSY = 26

///| EFBIG 27 File too large
pub const EFBIG = 27

///| ENOSPC 28 No space left on device
pub const ENOSPC = 28

///| ESPIPE 29 Illegal seek
pub const ESPIPE = 29

///| EROFS 30 Read-only file system
pub const EROFS = 30

///| EMLINK 31 Too many links
pub const EMLINK = 31

///| EPIPE 32 Broken pipe
pub const EPIPE = 32

///| EDOM 33 Numerical argument out of domain
pub const EDOM = 33

///| ERANGE 34 Numerical result out of range
pub const ERANGE = 34

///| EDEADLK 35 Resource deadlock avoided
pub const EDEADLK = 35

///| ENAMETOOLONG 36 File name too long
pub const ENAMETOOLONG = 36

///| ENOLCK 37 No locks available
pub const ENOLCK = 37

///| ENOSYS 38 Function not implemented
pub const ENOSYS = 38

///| ENOTEMPTY 39 Directory not empty
pub const ENOTEMPTY = 39

///| ELOOP 40 Too many levels of symbolic links
pub const ELOOP = 40

///| EWOULDBLOCK 11 Resource temporarily unavailable
pub const EWOULDBLOCK = 11

///| ENOMSG 42 No message of desired type
pub const ENOMSG = 42

///| EIDRM 43 Identifier removed
pub const EIDRM = 43

///| ECHRNG 44 Channel number out of range
pub const ECHRNG = 44

///| EL2NSYNC 45 Level 2 not synchronized
pub const EL2NSYNC = 45

///| EL3HLT 46 Level 3 halted
pub const EL3HLT = 46

///| EL3RST 47 Level 3 reset
pub const EL3RST = 47

///| ELNRNG 48 Link number out of range
pub const ELNRNG = 48

///| EUNATCH 49 Protocol driver not attached
pub const EUNATCH = 49

///| ENOCSI 50 No CSI structure available
pub const ENOCSI = 50

///| EL2HLT 51 Level 2 halted
pub const EL2HLT = 51

///| EBADE 52 Invalid exchange
pub const EBADE = 52

///| EBADR 53 Invalid request descriptor
pub const EBADR = 53

///| EXFULL 54 Exchange full
pub const EXFULL = 54

///| ENOANO 55 No anode
pub const ENOANO = 55

///| EBADRQC 56 Invalid request code
pub const EBADRQC = 56

///| EBADSLT 57 Invalid slot
pub const EBADSLT = 57

///| EDEADLOCK 35 Resource deadlock avoided
pub const EDEADLOCK = 35

///| EBFONT 59 Bad font file format
pub const EBFONT = 59

///| ENOSTR 60 Device not a stream
pub const ENOSTR = 60

///| ENODATA 61 No data available
pub const ENODATA = 61

///| ETIME 62 Timer expired
pub const ETIME = 62

///| ENOSR 63 Out of streams resources
pub const ENOSR = 63

///| ENONET 64 Machine is not on the network
pub const ENONET = 64

///| ENOPKG 65 Package not installed
pub const ENOPKG = 65

///| EREMOTE 66 Object is remote
pub const EREMOTE = 66

///| ENOLINK 67 Link has been severed
pub const ENOLINK = 67

///| EADV 68 Advertise error
pub const EADV = 68

///| ESRMNT 69 Srmount error
pub const ESRMNT = 69

///| ECOMM 70 Communication error on send
pub const ECOMM = 70

///| EPROTO 71 Protocol error
pub const EPROTO = 71

///| EMULTIHOP 72 Multihop attempted
pub const EMULTIHOP = 72

///| EDOTDOT 73 RFS specific error
pub const EDOTDOT = 73

///| EBADMSG 74 Bad message
pub const EBADMSG = 74

///| EOVERFLOW 75 Value too large for defined data type
pub const EOVERFLOW = 75

///| ENOTUNIQ 76 Name not unique on network
pub const ENOTUNIQ = 76

///| EBADFD 77 File descriptor in bad state
pub const EBADFD = 77

///| EREMCHG 78 Remote address changed
pub const EREMCHG = 78

///| ELIBACC 79 Can not access a needed shared library
pub const ELIBACC = 79

///| ELIBBAD 80 Accessing a corrupted shared library
pub const ELIBBAD = 80

///| ELIBSCN 81 .lib section in a.out corrupted
pub const ELIBSCN = 81

///| ELIBMAX 82 Attempting to link in too many shared libraries
pub const ELIBMAX = 82

///| ELIBEXEC 83 Cannot exec a shared library directly
pub const ELIBEXEC = 83

///| EILSEQ 84 Invalid or incomplete multibyte or wide character
pub const EILSEQ = 84

///| ERESTART 85 Interrupted system call should be restarted
pub const ERESTART = 85

///| ESTRPIPE 86 Streams pipe error
pub const ESTRPIPE = 86

///| EUSERS 87 Too many users
pub const EUSERS = 87

///| ENOTSOCK 88 Socket operation on non-socket
pub const ENOTSOCK = 88

///| EDESTADDRREQ 89 Destination address required
pub const EDESTADDRREQ = 89

///| EMSGSIZE 90 Message too long
pub const EMSGSIZE = 90

///| EPROTOTYPE 91 Protocol wrong type for socket
pub const EPROTOTYPE = 91

///| ENOPROTOOPT 92 Protocol not available
pub const ENOPROTOOPT = 92

///| EPROTONOSUPPORT 93 Protocol not supported
pub const EPROTONOSUPPORT = 93

///| ESOCKTNOSUPPORT 94 Socket type not supported
pub const ESOCKTNOSUPPORT = 94

///| EOPNOTSUPP 95 Operation not supported
pub const EOPNOTSUPP = 95

///| EPFNOSUPPORT 96 Protocol family not supported
pub const EPFNOSUPPORT = 96

///| EAFNOSUPPORT 97 Address family not supported by protocol
pub const EAFNOSUPPORT = 97

///| EADDRINUSE 98 Address already in use
pub const EADDRINUSE = 98

///| EADDRNOTAVAIL 99 Cannot assign requested address
pub const EADDRNOTAVAIL = 99

///| ENETDOWN 100 Network is down
pub const ENETDOWN = 100

///| ENETUNREACH 101 Network is unreachable
pub const ENETUNREACH = 101

///| ENETRESET 102 Network dropped connection on reset
pub const ENETRESET = 102

///| ECONNABORTED 103 Software caused connection abort
pub const ECONNABORTED = 103

///| ECONNRESET 104 Connection reset by peer
pub const ECONNRESET = 104

///| ENOBUFS 105 No buffer space available
pub const ENOBUFS = 105

///| EISCONN 106 Transport endpoint is already connected
pub const EISCONN = 106

///| ENOTCONN 107 Transport endpoint is not connected
pub const ENOTCONN = 107

///| ESHUTDOWN 108 Cannot send after transport endpoint shutdown
pub const ESHUTDOWN = 108

///| ETOOMANYREFS 109 Too many references: cannot splice
pub const ETOOMANYREFS = 109

///| ETIMEDOUT 110 Connection timed out
pub const ETIMEDOUT = 110

///| ECONNREFUSED 111 Connection refused
pub const ECONNREFUSED = 111

///| EHOSTDOWN 112 Host is down
pub const EHOSTDOWN = 112

///| EHOSTUNREACH 113 No route to host
pub const EHOSTUNREACH = 113

///| EALREADY 114 Operation already in progress
pub const EALREADY = 114

///| EINPROGRESS 115 Operation now in progress
pub const EINPROGRESS = 115

///| ESTALE 116 Stale file handle
pub const ESTALE = 116

///| EUCLEAN 117 Structure needs cleaning
pub const EUCLEAN = 117

///| ENOTNAM 118 Not a XENIX named type file
pub const ENOTNAM = 118

///| ENAVAIL 119 No XENIX semaphores available
pub const ENAVAIL = 119

///| EISNAM 120 Is a named type file
pub const EISNAM = 120

///| EREMOTEIO 121 Remote I/O error
pub const EREMOTEIO = 121

///| EDQUOT 122 Disk quota exceeded
pub const EDQUOT = 122

///| ENOMEDIUM 123 No medium found
pub const ENOMEDIUM = 123

///| EMEDIUMTYPE 124 Wrong medium type
pub const EMEDIUMTYPE = 124

///| ECANCELED 125 Operation canceled
pub const ECANCELED = 125

///| ENOKEY 126 Required key not available
pub const ENOKEY = 126

///| EKEYEXPIRED 127 Key has expired
pub const EKEYEXPIRED = 127

///| EKEYREVOKED 128 Key has been revoked
pub const EKEYREVOKED = 128

///| EKEYREJECTED 129 Key was rejected by service
pub const EKEYREJECTED = 129

///| EOWNERDEAD 130 Owner died
pub const EOWNERDEAD = 130

///| ENOTRECOVERABLE 131 State not recoverable
pub const ENOTRECOVERABLE = 131

///| ERFKILL 132 Operation not possible due to RF-kill
pub const ERFKILL = 132

///| EHWPOISON 133 Memory page has hardware error
pub const EHWPOISON = 133

///| ENOTSUP 95 Operation not supported
pub const ENOTSUP = 95
