#include <moonbit_posix_types.h>
#include <sys/stat.h>

// FFI namespace moonbit_posix_


// https://man7.org/linux/man-pages/man7/inode.7.html

// file mode
uint32_t moonbit_posix_S_ISUID() { return S_ISUID; }
uint32_t moonbit_posix_S_ISGID() { return S_ISGID; }
uint32_t moonbit_posix_S_ISVTX() { return S_ISVTX; }

uint32_t moonbit_posix_S_IRWXU() { return S_IRWXU; }

uint32_t moonbit_posix_S_IRUSR() { return S_IRUSR; }
uint32_t moonbit_posix_S_IWUSR() { return S_IWUSR; }
uint32_t moonbit_posix_S_IXUSR() { return S_IXUSR; }

uint32_t moonbit_posix_S_IRWXG() { return S_IRWXG; }

uint32_t moonbit_posix_S_IRGRP() { return S_IRGRP; }
uint32_t moonbit_posix_S_IWGRP() { return S_IWGRP; }
uint32_t moonbit_posix_S_IXGRP() { return S_IXGRP; }

uint32_t moonbit_posix_S_IRWXO() { return S_IRWXO; }

uint32_t moonbit_posix_S_IROTH() { return S_IROTH; }
uint32_t moonbit_posix_S_IWOTH() { return S_IWOTH; }
uint32_t moonbit_posix_S_IXOTH() { return S_IXOTH; }

// file type
uint32_t moonbit_posix_S_IFMT() { return S_IFMT; }
uint32_t moonbit_posix_S_IFSOCK() { return S_IFSOCK; }
uint32_t moonbit_posix_S_IFLNK() { return S_IFLNK; }
uint32_t moonbit_posix_S_IFDIR() { return S_IFDIR; }
uint32_t moonbit_posix_S_IFCHR() { return S_IFCHR; }
uint32_t moonbit_posix_S_IFBLK() { return S_IFBLK; }
uint32_t moonbit_posix_S_IFREG() { return S_IFREG; }
uint32_t moonbit_posix_S_IFIFO() { return S_IFIFO; }