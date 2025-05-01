#include <moonbit.h>
#include <stdint.h>
#include <sys/types.h>

typedef int32_t fd_t;

typedef const char* cstr_t;

// On success, zero is returned.
// On error, -1 is returned, and errno is set to indicate the error.
// ref:
// https://man7.org/linux/man-pages/man2/gethostname.2.html#RETURN_VALUE
typedef int32_t rslt_t;

// Upon successful completion 0 is returned.
// Otherwise, EOF is returned and errno is set to indicate the error.
// ref:
// https://man7.org/linux/man-pages/man3/fflush.3.html#RETURN_VALUE
typedef int32_t frslt_t;

// On success, the number of bytes is returned (zero indicates end of
// file) On error, -1 is returned, and errno is set to indicate the
// error. ref:
// https://man7.org/linux/man-pages/man2/read.2.html#RETURN_VALUE
typedef ssize_t opt_size_t;

typedef gid_t sid_t;

typedef char byte_t;

typedef int32_t whence_t;

typedef int32_t buf_mode_t;

typedef int32_t access_mode_t;

typedef int32_t signal_t;

typedef int32_t errno_t;

typedef int32_t at_flag_t;

typedef int32_t open_flag_t;

typedef int32_t fcntl_cmd_t;
// FFI namespace moonbit_posix_

#include <errno.h>
int moonbit_posix_get_errno() { return errno; }
void moonbit_posix_set_errno(int e) { errno = e; }

#include <sys/utsname.h>

// https://man7.org/linux/man-pages/man2/uname.2.html

int32_t moonbit_posix_uname(void* buf) { return uname(buf); }

#include <sys/stat.h>

// https://man7.org/linux/man-pages/man2/mkdir.2.html
int32_t
moonbit_posix_mkdirat(int32_t dirfd, void* path, uint32_t mode) {
  return mkdirat(dirfd, path, mode);
}

// https://man7.org/linux/man-pages/man3/chmod.3p.html
int32_t moonbit_posix_fchmodat(
    int32_t dirfd,
    void* pathname,
    int32_t mode,
    int32_t flags) {
  return fchmodat(dirfd, pathname, mode, flags);
}

// https://man7.org/linux/man-pages/man2/stat.2.html
int32_t moonbit_posix_fstatat(
    int32_t dirfd,
    void* pathname,
    struct stat* buf,
    int32_t flags) {
  return fstatat(dirfd, pathname, buf, flags);
}

// https://man7.org/linux/man-pages/man3/stat.3type.html

#include <sys/stat.h>

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
#include <sys/wait.h>

// https://man7.org/linux/man-pages/man2/wait.2.html
int32_t moonbit_posix_wait(void* wstatus) { return wait(wstatus); }

// https://man7.org/linux/man-pages/man2/wait.2.html
int32_t
moonbit_posix_waitpid(int32_t pid, void* wstatus, int32_t options) {
  return waitpid(pid, wstatus, options);
}

// https://man7.org/linux/man-pages/man2/wait.2.html
int32_t moonbit_posix_waitid(
    int32_t idtype,
    int32_t id,
    void* infop,
    int32_t options) {
  return waitid(idtype, id, infop, options);
}

// https://man7.org/linux/man-pages/man2/wait4.2.html
int32_t moonbit_posix_wait4(
    int32_t pid,
    void* wstatus,
    int32_t options,
    void* rusage) {
  return wait4(pid, wstatus, options, rusage);
}
#include <sys/uio.h>

// https://man7.org/linux/man-pages/man2/writev.2.html
int64_t moonbit_posix_writev(int fd, void* iov, int iovcnt) {
  return moonbit_posix_writev(fd, iov, iovcnt);
}

// https://man7.org/linux/man-pages/man2/readv.2.html
int64_t moonbit_posix_readv(int fd, void* iov, int iovcnt) {
  return readv(fd, iov, iovcnt);
}

// https://man7.org/linux/man-pages/man2/preadv.2.html
int64_t moonbit_posix_preadv(
    int fd,
    const struct iovec* iov,
    int iovcnt,
    int64_t offset) {
  return preadv(fd, iov, iovcnt, offset);
}

// https://man7.org/linux/man-pages/man2/pwritev.2.html
int64_t moonbit_posix_pwritev(
    int fd,
    const struct iovec* iov,
    int iovcnt,
    int64_t offset) {
  return pwritev(fd, iov, iovcnt, offset);
}
#include <time.h>

#ifndef __APPLE__

// https://man7.org/linux/man-pages/man2/nanosleep.2.html
rslt_t moonbit_posix_nanosleep(
    const struct timespec* duration,
    struct timespec* rem) {
  return nanosleep(duration, rem);
}

// https://man7.org/linux/man-pages/man2/timer_create.2.html
// link option: -lrt
rslt_t moonbit_posix_timer_create(
    clockid_t clockid,
    struct sigevent* sevp,
    timer_t* timerid) {
  return timer_create(clockid, sevp, timerid);
}

// ref: https://man7.org/linux/man-pages/man2/setitimer.2.html
// POSIX.1-2008 marks getitimer() and setitimer() obsolete,
// recommending the use of the POSIX timers API (timer_gettime(2),
// timer_settime(2), etc.) instead.

// https://man7.org/linux/man-pages/man2/timer_gettime.2.html
rslt_t moonbit_posix_timer_gettime(
    timer_t timerid,
    struct itimerspec* curr) {
  return timer_gettime(timerid, curr);
}

// https://man7.org/linux/man-pages/man2/timer_settime.2.html
rslt_t moonbit_posix_timer_settime(
    timer_t timerid,
    int32_t flags,
    const struct itimerspec* new_value,
    struct itimerspec* old_value) {
  return timer_settime(timerid, flags, new_value, old_value);
}

#endif

#include <fcntl.h>
#include <unistd.h>

int32_t moonbit_posix__CS_GNU_LIBC_VERSION() {
  return _CS_GNU_LIBC_VERSION;
}
int32_t moonbit_posix__CS_GNU_LIBPTHREAD_VERSION() {
  return _CS_GNU_LIBPTHREAD_VERSION;
}

#ifndef __APPLE__
access_mode_t moonbit_posix_F_OK() { return F_OK; }
access_mode_t moonbit_posix_R_OK() { return R_OK; }
access_mode_t moonbit_posix_W_OK() { return W_OK; }
access_mode_t moonbit_posix_X_OK() { return X_OK; }
open_flag_t moonbit_posix_O_RSYNC() { return O_RSYNC; }
#endif
// https://www.man7.org/linux/man-pages/man0/fcntl.h.0p.html

fd_t moonbit_posix_AT_FDCWD() { return AT_FDCWD; }

at_flag_t moonbit_posix_AT_EACCESS() { return AT_EACCESS; }
at_flag_t moonbit_posix_AT_SYMLINK_NOFOLLOW() {
  return AT_SYMLINK_NOFOLLOW;
}
at_flag_t moonbit_posix_AT_SYMLINK_FOLLOW() {
  return AT_SYMLINK_FOLLOW;
}
at_flag_t moonbit_posix_AT_REMOVEDIR() { return AT_REMOVEDIR; }

open_flag_t moonbit_posix_O_ACCMODE() { return O_ACCMODE; }
open_flag_t moonbit_posix_O_APPEND() { return O_APPEND; }
open_flag_t moonbit_posix_O_CLOEXEC() { return O_CLOEXEC; }
open_flag_t moonbit_posix_O_CREAT() { return O_CREAT; }
open_flag_t moonbit_posix_O_DIRECTORY() { return O_DIRECTORY; }
open_flag_t moonbit_posix_O_DSYNC() { return O_DSYNC; }
open_flag_t moonbit_posix_O_EXCL() { return O_EXCL; }
open_flag_t moonbit_posix_O_NOCTTY() { return O_NOCTTY; }
open_flag_t moonbit_posix_O_NOFOLLOW() { return O_NOFOLLOW; }
open_flag_t moonbit_posix_O_NONBLOCK() { return O_NONBLOCK; }
open_flag_t moonbit_posix_O_RDONLY() { return O_RDONLY; }
open_flag_t moonbit_posix_O_RDWR() { return O_RDWR; }
open_flag_t moonbit_posix_O_SYNC() { return O_SYNC; }
open_flag_t moonbit_posix_O_TRUNC() { return O_TRUNC; }
open_flag_t moonbit_posix_O_WRONLY() { return O_WRONLY; }

fcntl_cmd_t moonbit_posix_F_DUPFD() { return F_DUPFD; }
fcntl_cmd_t moonbit_posix_F_DUPFD_CLOEXEC() {
  return F_DUPFD_CLOEXEC;
}
fcntl_cmd_t moonbit_posix_F_GETFD() { return F_GETFD; }
fcntl_cmd_t moonbit_posix_F_SETFD() { return F_SETFD; }
fcntl_cmd_t moonbit_posix_F_GETFL() { return F_GETFL; }
fcntl_cmd_t moonbit_posix_F_SETFL() { return F_SETFL; }
fcntl_cmd_t moonbit_posix_F_GETLK() { return F_GETLK; }
fcntl_cmd_t moonbit_posix_F_SETLK() { return F_SETLK; }
fcntl_cmd_t moonbit_posix_F_SETLKW() { return F_SETLKW; }
fcntl_cmd_t moonbit_posix_F_GETOWN() { return F_GETOWN; }
fcntl_cmd_t moonbit_posix_F_SETOWN() { return F_SETOWN; }
fcntl_cmd_t moonbit_posix_FD_CLOEXEC() { return FD_CLOEXEC; }
fcntl_cmd_t moonbit_posix_F_RDLCK() { return F_RDLCK; }
fcntl_cmd_t moonbit_posix_F_UNLCK() { return F_UNLCK; }
fcntl_cmd_t moonbit_posix_F_WRLCK() { return F_WRLCK; }

//  https://www.man7.org/linux/man-pages/man0/fcntl.h.0p.html
fd_t moonbit_posix_openat(
    int32_t dirfd,
    cstr_t path,
    open_flag_t oflag,
    access_mode_t mode) {
  return openat(dirfd, path, oflag, mode);
}

#include <stddef.h>
#include <unistd.h>

// https://man7.org/linux/man-pages/man2/access.2.html
rslt_t moonbit_posix_faccessat(
    fd_t dirfd,
    cstr_t path,
    access_mode_t mode,
    at_flag_t flags) {
  return faccessat(dirfd, path, mode, flags);
}

// https://man7.org/linux/man-pages/man2/unlink.2.html
rslt_t
moonbit_posix_unlinkat(fd_t dirfd, cstr_t path, at_flag_t flags) {
  return unlinkat(dirfd, path, flags);
}

// https://man7.org/linux/man-pages/man3/chown.3p.html
rslt_t moonbit_posix_fchownat(
    fd_t dirfd,
    cstr_t path,
    uid_t owner,
    gid_t group,
    at_flag_t flags) {
  return fchownat(dirfd, path, owner, group, flags);
}

// https://man7.org/linux/man-pages/man2/link.2.html
rslt_t moonbit_posix_linkat(
    fd_t olddirfd,
    cstr_t oldpath,
    fd_t newdirfd,
    cstr_t newpath,
    at_flag_t flags) {
  return linkat(olddirfd, oldpath, newdirfd, newpath, flags);
}

// https://man7.org/linux/man-pages/man2/symlink.2.html
rslt_t moonbit_posix_symlinkat(
    cstr_t target,
    fd_t newdirfd,
    cstr_t newpath) {
  return symlinkat(target, newdirfd, newpath);
}

// https://man7.org/linux/man-pages/man2/readlink.2.html
opt_size_t moonbit_posix_readlinkat(
    fd_t dirfd,
    cstr_t path,
    char* buf,
    size_t bufsiz) {
  return readlinkat(dirfd, path, buf, bufsiz);
}

#include <time.h>
#include <unistd.h>

// groups id
// https://man7.org/linux/man-pages/man2/getgid.2.html
gid_t moonbit_posix_getgid() { return getgid(); }

// https://man7.org/linux/man-pages/man2/setgid.2.html
rslt_t moonbit_posix_setgid(gid_t gid) { return setgid(gid); }

// https://man7.org/linux/man-pages/man2/getegid.2.html
gid_t moonbit_posix_getegid() { return getegid(); }

// https://man7.org/linux/man-pages/man2/setegid.2.html
rslt_t moonbit_posix_setegid(gid_t egid) { return setegid(egid); }

// user id

// https://man7.org/linux/man-pages/man2/getuid.2.html
uid_t moonbit_posix_getuid() { return getuid(); }

// https://man7.org/linux/man-pages/man2/setuid.2.html
rslt_t moonbit_posix_setuid(uid_t uid) { return setuid(uid); }

// https://man7.org/linux/man-pages/man2/geteuid.2.html
uid_t moonbit_posix_geteuid() { return geteuid(); }

// https://man7.org/linux/man-pages/man2/seteuid.2.html
rslt_t moonbit_posix_seteuid(uid_t euid) { return seteuid(euid); }

// process id

// https://man7.org/linux/man-pages/man3/getpgid.3p.html
pid_t moonbit_posix_getpgid(pid_t pid) { return getpgid(pid); }

// https://man7.org/linux/man-pages/man3/getpid.3p.html
pid_t moonbit_posix_getpid() { return getpid(); }

// https://man7.org/linux/man-pages/man3/getppid.3p.html
pid_t moonbit_posix_getppid() { return getppid(); }

// https://man7.org/linux/man-pages/man2/getsid.2.html
sid_t moonbit_posix_getsid(pid_t pid) { return getsid(pid); }

// https://man7.org/linux/man-pages/man3/setpgid.3p.html
rslt_t moonbit_posix_setpgid(pid_t pid, pid_t pgid) {
  return setpgid(pid, pgid);
}

// https://man7.org/linux/man-pages/man2/setsid.2.html
sid_t moonbit_posix_setsid() { return setsid(); }
#include <stdlib.h>

// https://man7.org/linux/man-pages/man3/system.3.html

int32_t moonbit_posix_system(cstr_t command) {
  return system(command);
}
#include <unistd.h>

// https://man7.org/linux/man-pages/man2/close.2.html
rslt_t moonbit_posix_close(fd_t fd) { return close(fd); }

// https://man7.org/linux/man-pages/man2/write.2.html
opt_size_t
moonbit_posix_write(fd_t fd, const byte_t* buf, uint64_t count) {
  return write(fd, buf, count);
}

// https://man7.org/linux/man-pages/man2/read.2.html
opt_size_t moonbit_posix_read(fd_t fd, byte_t* buf, uint64_t count) {
  return read(fd, buf, count);
}

// https://man7.org/linux/man-pages/man2/dup.2.html
rslt_t moonbit_posix_dup(fd_t fd) { return dup(fd); }

// https://man7.org/linux/man-pages/man2/dup.2.html
rslt_t moonbit_posix_dup2(fd_t oldfd, fd_t newfd) {
  return dup2(oldfd, newfd);
}

// https://man7.org/linux/man-pages/man3/fchdir.3p.html
rslt_t moonbit_posix_fchdir(fd_t fd) { return fchdir(fd); }

// https://man7.org/linux/man-pages/man3/fchown.3p.html
rslt_t moonbit_posix_fchown(fd_t fd, uint32_t owner, uint32_t group) {
  return fchown(fd, owner, group);
}

// https://man7.org/linux/man-pages/man3/fdatasync.3p.html
rslt_t moonbit_posix_fdatasync(fd_t fd) { return fdatasync(fd); }

// https://man7.org/linux/man-pages/man3/pathconf.3.html
int64_t moonbit_posix_fpathconf(fd_t fd, int32_t name) {
  return fpathconf(fd, name);
}

// https://man7.org/linux/man-pages/man2/fsync.2.html
rslt_t moonbit_posix_fsync(fd_t fd) { return fsync(fd); }

// https://man7.org/linux/man-pages/man3/ftruncate.3p.html
rslt_t moonbit_posix_ftruncate(fd_t fd, int64_t length) {
  return ftruncate(fd, length);
}

// https://man7.org/linux/man-pages/man2/pipe.2.html
rslt_t moonbit_posix_pipe(fd_t* pipefd) { return pipe(pipefd); }

// https://man7.org/linux/man-pages/man2/pread.2.html
opt_size_t moonbit_posix_pread(
    fd_t fd,
    byte_t* buf,
    uint64_t count,
    off_t offset) {
  return pread(fd, buf, count, offset);
}

// https://www.man7.org/linux/man-pages/man3/pwrite.3p.html
opt_size_t moonbit_posix_pwrite(
    fd_t fd,
    const byte_t* buf,
    uint64_t count,
    off_t offset) {
  return pwrite(fd, buf, count, offset);
}

rslt_t moonbit_posix_STDIN_FILENO() { return STDIN_FILENO; }

rslt_t moonbit_posix_STDOUT_FILENO() { return STDOUT_FILENO; }

rslt_t moonbit_posix_STDERR_FILENO() { return STDERR_FILENO; }

// https://man7.org/linux/man-pages/man3/lockf.3.html
rslt_t moonbit_posix_lockf(fd_t fd, int32_t cmd, int64_t len) {
  return lockf(fd, cmd, len);
}

// https://www.man7.org/linux/man-pages/man3/isatty.3.html
rslt_t moonbit_posix_isatty(fd_t fd) { return isatty(fd); }

// https://man7.org/linux/man-pages/man2/lseek.2.html
int64_t moonbit_posix_lseek(fd_t fd, off_t offset, whence_t whence) {
  return lseek(fd, offset, whence);
}

whence_t moonbit_posix_SEEK_SET() { return SEEK_SET; }

whence_t moonbit_posix_SEEK_CUR() { return SEEK_CUR; }

whence_t moonbit_posix_SEEK_END() { return SEEK_END; }

#ifndef __APPLE__
// https://man7.org/linux/man-pages/man3/fexecve.3.html
rslt_t moonbit_posix_fexecve(fd_t fd, void* argv, void* envp) {
  return fexecve(fd, argv, envp);
}
#endif
#include <grp.h>
#include <stddef.h>

#ifndef __APPLE__

// https://man7.org/linux/man-pages/man2/setgroups.2.html
rslt_t moonbit_posix_setgroups(size_t size, gid_t* list) {
  return setgroups(size, list);
}

#endif
#include <stddef.h>
#include <stdio.h>

// https://www.man7.org/linux/man-pages/man0/stdio.h.0p.html
// https://man7.org/linux/man-pages/man3/stdio.3.html

FILE* moonbit_posix_stdout() { return stdout; }

FILE* moonbit_posix_stdin() { return stdin; }

FILE* moonbit_posix_stderr() { return stderr; }

int32_t moonbit_posix_fputc(int32_t ch, FILE* stream) {
  return fputc(ch, stream);
}

// https://man7.org/linux/man-pages/man3/fputs.3p.html
frslt_t moonbit_posix_fputs(cstr_t str, FILE* stream) {
  return fputs(str, stream);
}

int32_t moonbit_posix_fgetc(FILE* stream) { return fgetc(stream); }

// https://man7.org/linux/man-pages/man3/fgets.3p.html
char* moonbit_posix_fgets(char* buf, int32_t size, FILE* stream) {
  return fgets(buf, size, stream);
}

// https://www.man7.org/linux/man-pages/man3/ungetc.3p.html
int32_t moonbit_posix_ungetc(int32_t ch, FILE* stream) {
  return ungetc(ch, stream);
}

int32_t moonbit_posix_EOF() { return EOF; }

// https://man7.org/linux/man-pages/man3/fflush.3.html
frslt_t moonbit_posix_fflush(FILE* stream) { return fflush(stream); }

// https://man7.org/linux/man-pages/man3/fclose.3.html
frslt_t moonbit_posix_fclose(FILE* stream) { return fclose(stream); }

// https://man7.org/linux/man-pages/man3/fwrite.3p.html
size_t moonbit_posix_fread(
    byte_t* ptr,
    size_t size,
    size_t nmemb,
    FILE* stream) {
  return fread(ptr, size, nmemb, stream);
}

// https://man7.org/linux/man-pages/man3/fwrite.3p.html
size_t moonbit_posix_fwrite(
    const byte_t* ptr,
    size_t size,
    size_t n,
    FILE* stream) {
  return fwrite(ptr, size, n, stream);
}

buf_mode_t moonbit_posix__IOFBF() { return _IOFBF; }

buf_mode_t moonbit_posix__IOLBF() { return _IOLBF; }

buf_mode_t moonbit_posix__IONBF() { return _IONBF; }

size_t moonbit_posix_BUFSIZ() { return BUFSIZ; }

// https://man7.org/linux/man-pages/man3/setvbuf.3p.html
int32_t moonbit_posix_setvbuf(
    FILE* stream,
    char* buf,
    buf_mode_t mode,
    size_t size) {
  return setvbuf(stream, buf, mode, size);
}

// https://man7.org/linux/man-pages/man3/fdopen.3p.html
FILE* moonbit_posix_fdopen(fd_t fd, cstr_t mode) {
  return fdopen(fd, mode);
}

// https://man7.org/linux/man-pages/man2/rename.2.html
rslt_t moonbit_posix_renameat(
    fd_t olddirfd,
    cstr_t oldpath,
    fd_t newdirfd,
    cstr_t newpath) {
  return renameat(olddirfd, oldpath, newdirfd, newpath);
}
#include <unistd.h>

int32_t moonbit_posix__PC_2_SYMLINKS() { return _PC_2_SYMLINKS; }
int32_t moonbit_posix__PC_ALLOC_SIZE_MIN() {
  return _PC_ALLOC_SIZE_MIN;
}
int32_t moonbit_posix__PC_ASYNC_IO() { return _PC_ASYNC_IO; }
int32_t moonbit_posix__PC_CHOWN_RESTRICTED() {
  return _PC_CHOWN_RESTRICTED;
}
int32_t moonbit_posix__PC_FILESIZEBITS() { return _PC_FILESIZEBITS; }
int32_t moonbit_posix__PC_LINK_MAX() { return _PC_LINK_MAX; }
int32_t moonbit_posix__PC_MAX_CANON() { return _PC_MAX_CANON; }
int32_t moonbit_posix__PC_MAX_INPUT() { return _PC_MAX_INPUT; }
int32_t moonbit_posix__PC_NAME_MAX() { return _PC_NAME_MAX; }
int32_t moonbit_posix__PC_NO_TRUNC() { return _PC_NO_TRUNC; }
int32_t moonbit_posix__PC_PATH_MAX() { return _PC_PATH_MAX; }
int32_t moonbit_posix__PC_PIPE_BUF() { return _PC_PIPE_BUF; }
int32_t moonbit_posix__PC_PRIO_IO() { return _PC_PRIO_IO; }
int32_t moonbit_posix__PC_REC_INCR_XFER_SIZE() {
  return _PC_REC_INCR_XFER_SIZE;
}
int32_t moonbit_posix__PC_REC_MAX_XFER_SIZE() {
  return _PC_REC_MAX_XFER_SIZE;
}
int32_t moonbit_posix__PC_REC_MIN_XFER_SIZE() {
  return _PC_REC_MIN_XFER_SIZE;
}
int32_t moonbit_posix__PC_REC_XFER_ALIGN() {
  return _PC_REC_XFER_ALIGN;
}
int32_t moonbit_posix__PC_SYMLINK_MAX() { return _PC_SYMLINK_MAX; }
int32_t moonbit_posix__PC_SYNC_IO() { return _PC_SYNC_IO; }
int32_t moonbit_posix__PC_VDISABLE() { return _PC_VDISABLE; }

int32_t moonbit_posix__SC_2_C_BIND() { return _SC_2_C_BIND; }
int32_t moonbit_posix__SC_2_C_DEV() { return _SC_2_C_DEV; }
int32_t moonbit_posix__SC_2_CHAR_TERM() { return _SC_2_CHAR_TERM; }
int32_t moonbit_posix__SC_2_FORT_DEV() { return _SC_2_FORT_DEV; }
int32_t moonbit_posix__SC_2_FORT_RUN() { return _SC_2_FORT_RUN; }
int32_t moonbit_posix__SC_2_LOCALEDEF() { return _SC_2_LOCALEDEF; }
int32_t moonbit_posix__SC_2_PBS() { return _SC_2_PBS; }
int32_t moonbit_posix__SC_2_PBS_ACCOUNTING() {
  return _SC_2_PBS_ACCOUNTING;
}
int32_t moonbit_posix__SC_2_PBS_CHECKPOINT() {
  return _SC_2_PBS_CHECKPOINT;
}
int32_t moonbit_posix__SC_2_PBS_LOCATE() { return _SC_2_PBS_LOCATE; }
int32_t moonbit_posix__SC_2_PBS_MESSAGE() {
  return _SC_2_PBS_MESSAGE;
}
int32_t moonbit_posix__SC_2_PBS_TRACK() { return _SC_2_PBS_TRACK; }
int32_t moonbit_posix__SC_2_SW_DEV() { return _SC_2_SW_DEV; }
int32_t moonbit_posix__SC_2_UPE() { return _SC_2_UPE; }
int32_t moonbit_posix__SC_2_VERSION() { return _SC_2_VERSION; }
int32_t moonbit_posix__SC_ADVISORY_INFO() {
  return _SC_ADVISORY_INFO;
}
int32_t moonbit_posix__SC_AIO_LISTIO_MAX() {
  return _SC_AIO_LISTIO_MAX;
}
int32_t moonbit_posix__SC_AIO_MAX() { return _SC_AIO_MAX; }
int32_t moonbit_posix__SC_AIO_PRIO_DELTA_MAX() {
  return _SC_AIO_PRIO_DELTA_MAX;
}
int32_t moonbit_posix__SC_ARG_MAX() { return _SC_ARG_MAX; }
int32_t moonbit_posix__SC_ASYNCHRONOUS_IO() {
  return _SC_ASYNCHRONOUS_IO;
}
int32_t moonbit_posix__SC_ATEXIT_MAX() { return _SC_ATEXIT_MAX; }
int32_t moonbit_posix__SC_BARRIERS() { return _SC_BARRIERS; }
int32_t moonbit_posix__SC_BC_BASE_MAX() { return _SC_BC_BASE_MAX; }
int32_t moonbit_posix__SC_BC_DIM_MAX() { return _SC_BC_DIM_MAX; }
int32_t moonbit_posix__SC_BC_SCALE_MAX() { return _SC_BC_SCALE_MAX; }
int32_t moonbit_posix__SC_BC_STRING_MAX() {
  return _SC_BC_STRING_MAX;
}
int32_t moonbit_posix__SC_CHILD_MAX() { return _SC_CHILD_MAX; }
int32_t moonbit_posix__SC_CLK_TCK() { return _SC_CLK_TCK; }
int32_t moonbit_posix__SC_CLOCK_SELECTION() {
  return _SC_CLOCK_SELECTION;
}
int32_t moonbit_posix__SC_COLL_WEIGHTS_MAX() {
  return _SC_COLL_WEIGHTS_MAX;
}
int32_t moonbit_posix__SC_CPUTIME() { return _SC_CPUTIME; }
int32_t moonbit_posix__SC_DELAYTIMER_MAX() {
  return _SC_DELAYTIMER_MAX;
}
int32_t moonbit_posix__SC_EXPR_NEST_MAX() {
  return _SC_EXPR_NEST_MAX;
}
int32_t moonbit_posix__SC_FSYNC() { return _SC_FSYNC; }
int32_t moonbit_posix__SC_GETGR_R_SIZE_MAX() {
  return _SC_GETGR_R_SIZE_MAX;
}
int32_t moonbit_posix__SC_GETPW_R_SIZE_MAX() {
  return _SC_GETPW_R_SIZE_MAX;
}
int32_t moonbit_posix__SC_HOST_NAME_MAX() {
  return _SC_HOST_NAME_MAX;
}
int32_t moonbit_posix__SC_IOV_MAX() { return _SC_IOV_MAX; }
int32_t moonbit_posix__SC_IPV6() { return _SC_IPV6; }
int32_t moonbit_posix__SC_JOB_CONTROL() { return _SC_JOB_CONTROL; }
int32_t moonbit_posix__SC_LINE_MAX() { return _SC_LINE_MAX; }
int32_t moonbit_posix__SC_LOGIN_NAME_MAX() {
  return _SC_LOGIN_NAME_MAX;
}
int32_t moonbit_posix__SC_MAPPED_FILES() { return _SC_MAPPED_FILES; }
int32_t moonbit_posix__SC_MEMLOCK() { return _SC_MEMLOCK; }
int32_t moonbit_posix__SC_MEMLOCK_RANGE() {
  return _SC_MEMLOCK_RANGE;
}
int32_t moonbit_posix__SC_MEMORY_PROTECTION() {
  return _SC_MEMORY_PROTECTION;
}
int32_t moonbit_posix__SC_MESSAGE_PASSING() {
  return _SC_MESSAGE_PASSING;
}
int32_t moonbit_posix__SC_MONOTONIC_CLOCK() {
  return _SC_MONOTONIC_CLOCK;
}
int32_t moonbit_posix__SC_MQ_OPEN_MAX() { return _SC_MQ_OPEN_MAX; }
int32_t moonbit_posix__SC_MQ_PRIO_MAX() { return _SC_MQ_PRIO_MAX; }
int32_t moonbit_posix__SC_NGROUPS_MAX() { return _SC_NGROUPS_MAX; }
int32_t moonbit_posix__SC_OPEN_MAX() { return _SC_OPEN_MAX; }
int32_t moonbit_posix__SC_PAGE_SIZE() { return _SC_PAGE_SIZE; }
int32_t moonbit_posix__SC_PAGESIZE() { return _SC_PAGESIZE; }
int32_t moonbit_posix__SC_PRIORITIZED_IO() {
  return _SC_PRIORITIZED_IO;
}
int32_t moonbit_posix__SC_PRIORITY_SCHEDULING() {
  return _SC_PRIORITY_SCHEDULING;
}
int32_t moonbit_posix__SC_RAW_SOCKETS() { return _SC_RAW_SOCKETS; }
int32_t moonbit_posix__SC_RE_DUP_MAX() { return _SC_RE_DUP_MAX; }
int32_t moonbit_posix__SC_READER_WRITER_LOCKS() {
  return _SC_READER_WRITER_LOCKS;
}
int32_t moonbit_posix__SC_REALTIME_SIGNALS() {
  return _SC_REALTIME_SIGNALS;
}
int32_t moonbit_posix__SC_REGEXP() { return _SC_REGEXP; }
int32_t moonbit_posix__SC_RTSIG_MAX() { return _SC_RTSIG_MAX; }
int32_t moonbit_posix__SC_SAVED_IDS() { return _SC_SAVED_IDS; }
int32_t moonbit_posix__SC_SEM_NSEMS_MAX() {
  return _SC_SEM_NSEMS_MAX;
}
int32_t moonbit_posix__SC_SEM_VALUE_MAX() {
  return _SC_SEM_VALUE_MAX;
}
int32_t moonbit_posix__SC_SEMAPHORES() { return _SC_SEMAPHORES; }
int32_t moonbit_posix__SC_SHARED_MEMORY_OBJECTS() {
  return _SC_SHARED_MEMORY_OBJECTS;
}
int32_t moonbit_posix__SC_SHELL() { return _SC_SHELL; }
int32_t moonbit_posix__SC_SIGQUEUE_MAX() { return _SC_SIGQUEUE_MAX; }
int32_t moonbit_posix__SC_SPAWN() { return _SC_SPAWN; }
int32_t moonbit_posix__SC_SPIN_LOCKS() { return _SC_SPIN_LOCKS; }
int32_t moonbit_posix__SC_SPORADIC_SERVER() {
  return _SC_SPORADIC_SERVER;
}
int32_t moonbit_posix__SC_SS_REPL_MAX() { return _SC_SS_REPL_MAX; }
int32_t moonbit_posix__SC_STREAM_MAX() { return _SC_STREAM_MAX; }
int32_t moonbit_posix__SC_SYMLOOP_MAX() { return _SC_SYMLOOP_MAX; }
int32_t moonbit_posix__SC_SYNCHRONIZED_IO() {
  return _SC_SYNCHRONIZED_IO;
}
int32_t moonbit_posix__SC_THREAD_ATTR_STACKADDR() {
  return _SC_THREAD_ATTR_STACKADDR;
}
int32_t moonbit_posix__SC_THREAD_ATTR_STACKSIZE() {
  return _SC_THREAD_ATTR_STACKSIZE;
}
int32_t moonbit_posix__SC_THREAD_CPUTIME() {
  return _SC_THREAD_CPUTIME;
}
int32_t moonbit_posix__SC_THREAD_DESTRUCTOR_ITERATIONS() {
  return _SC_THREAD_DESTRUCTOR_ITERATIONS;
}
int32_t moonbit_posix__SC_THREAD_KEYS_MAX() {
  return _SC_THREAD_KEYS_MAX;
}
int32_t moonbit_posix__SC_THREAD_PRIO_INHERIT() {
  return _SC_THREAD_PRIO_INHERIT;
}
int32_t moonbit_posix__SC_THREAD_PRIO_PROTECT() {
  return _SC_THREAD_PRIO_PROTECT;
}
int32_t moonbit_posix__SC_THREAD_PRIORITY_SCHEDULING() {
  return _SC_THREAD_PRIORITY_SCHEDULING;
}
int32_t moonbit_posix__SC_THREAD_PROCESS_SHARED() {
  return _SC_THREAD_PROCESS_SHARED;
}

int32_t moonbit_posix__SC_THREAD_SAFE_FUNCTIONS() {
  return _SC_THREAD_SAFE_FUNCTIONS;
}
int32_t moonbit_posix__SC_THREAD_SPORADIC_SERVER() {
  return _SC_THREAD_SPORADIC_SERVER;
}
int32_t moonbit_posix__SC_THREAD_STACK_MIN() {
  return _SC_THREAD_STACK_MIN;
}
int32_t moonbit_posix__SC_THREAD_THREADS_MAX() {
  return _SC_THREAD_THREADS_MAX;
}
int32_t moonbit_posix__SC_THREADS() { return _SC_THREADS; }
int32_t moonbit_posix__SC_TIMEOUTS() { return _SC_TIMEOUTS; }
int32_t moonbit_posix__SC_TIMER_MAX() { return _SC_TIMER_MAX; }
int32_t moonbit_posix__SC_TIMERS() { return _SC_TIMERS; }
int32_t moonbit_posix__SC_TRACE() { return _SC_TRACE; }
int32_t moonbit_posix__SC_TRACE_EVENT_FILTER() {
  return _SC_TRACE_EVENT_FILTER;
}
int32_t moonbit_posix__SC_TRACE_EVENT_NAME_MAX() {
  return _SC_TRACE_EVENT_NAME_MAX;
}
int32_t moonbit_posix__SC_TRACE_INHERIT() {
  return _SC_TRACE_INHERIT;
}
int32_t moonbit_posix__SC_TRACE_LOG() { return _SC_TRACE_LOG; }
int32_t moonbit_posix__SC_TRACE_NAME_MAX() {
  return _SC_TRACE_NAME_MAX;
}
int32_t moonbit_posix__SC_TRACE_SYS_MAX() {
  return _SC_TRACE_SYS_MAX;
}
int32_t moonbit_posix__SC_TRACE_USER_EVENT_MAX() {
  return _SC_TRACE_USER_EVENT_MAX;
}
int32_t moonbit_posix__SC_TTY_NAME_MAX() { return _SC_TTY_NAME_MAX; }
int32_t moonbit_posix__SC_TYPED_MEMORY_OBJECTS() {
  return _SC_TYPED_MEMORY_OBJECTS;
}
int32_t moonbit_posix__SC_TZNAME_MAX() { return _SC_TZNAME_MAX; }

int32_t moonbit_posix__SC_V6_ILP32_OFF32() {
  return _SC_V6_ILP32_OFF32;
}
int32_t moonbit_posix__SC_V6_ILP32_OFFBIG() {
  return _SC_V6_ILP32_OFFBIG;
}
int32_t moonbit_posix__SC_V6_LP64_OFF64() {
  return _SC_V6_LP64_OFF64;
}
int32_t moonbit_posix__SC_V6_LPBIG_OFFBIG() {
  return _SC_V6_LPBIG_OFFBIG;
}
int32_t moonbit_posix__SC_VERSION() { return _SC_VERSION; }
int32_t moonbit_posix__SC_XOPEN_CRYPT() { return _SC_XOPEN_CRYPT; }
int32_t moonbit_posix__SC_XOPEN_ENH_I18N() {
  return _SC_XOPEN_ENH_I18N;
}
int32_t moonbit_posix__SC_XOPEN_REALTIME() {
  return _SC_XOPEN_REALTIME;
}
int32_t moonbit_posix__SC_XOPEN_REALTIME_THREADS() {
  return _SC_XOPEN_REALTIME_THREADS;
}
int32_t moonbit_posix__SC_XOPEN_SHM() { return _SC_XOPEN_SHM; }
int32_t moonbit_posix__SC_XOPEN_STREAMS() {
  return _SC_XOPEN_STREAMS;
}
int32_t moonbit_posix__SC_XOPEN_UNIX() { return _SC_XOPEN_UNIX; }
int32_t moonbit_posix__SC_XOPEN_VERSION() {
  return _SC_XOPEN_VERSION;
}
int32_t moonbit_posix__CS_PATH() { return _CS_PATH; }

int32_t moonbit_posix__CS_POSIX_V6_ILP32_OFF32_CFLAGS() {
  return _CS_POSIX_V6_ILP32_OFF32_CFLAGS;
}
int32_t moonbit_posix__CS_POSIX_V6_ILP32_OFF32_LDFLAGS() {
  return _CS_POSIX_V6_ILP32_OFF32_LDFLAGS;
}
int32_t moonbit_posix__CS_POSIX_V6_ILP32_OFF32_LIBS() {
  return _CS_POSIX_V6_ILP32_OFF32_LIBS;
}
int32_t moonbit_posix__CS_POSIX_V6_ILP32_OFFBIG_CFLAGS() {
  return _CS_POSIX_V6_ILP32_OFFBIG_CFLAGS;
}
int32_t moonbit_posix__CS_POSIX_V6_ILP32_OFFBIG_LDFLAGS() {
  return _CS_POSIX_V6_ILP32_OFFBIG_LDFLAGS;
}
int32_t moonbit_posix__CS_POSIX_V6_ILP32_OFFBIG_LIBS() {
  return _CS_POSIX_V6_ILP32_OFFBIG_LIBS;
}
int32_t moonbit_posix__CS_POSIX_V6_LP64_OFF64_CFLAGS() {
  return _CS_POSIX_V6_LP64_OFF64_CFLAGS;
}
int32_t moonbit_posix__CS_POSIX_V6_LP64_OFF64_LDFLAGS() {
  return _CS_POSIX_V6_LP64_OFF64_LDFLAGS;
}
int32_t moonbit_posix__CS_POSIX_V6_LP64_OFF64_LIBS() {
  return _CS_POSIX_V6_LP64_OFF64_LIBS;
}
int32_t moonbit_posix__CS_POSIX_V6_LPBIG_OFFBIG_CFLAGS() {
  return _CS_POSIX_V6_LPBIG_OFFBIG_CFLAGS;
}
int32_t moonbit_posix__CS_POSIX_V6_LPBIG_OFFBIG_LDFLAGS() {
  return _CS_POSIX_V6_LPBIG_OFFBIG_LDFLAGS;
}
int32_t moonbit_posix__CS_POSIX_V6_LPBIG_OFFBIG_LIBS() {
  return _CS_POSIX_V6_LPBIG_OFFBIG_LIBS;
}
int32_t moonbit_posix__CS_POSIX_V6_WIDTH_RESTRICTED_ENVS() {
  return _CS_POSIX_V6_WIDTH_RESTRICTED_ENVS;
}

#ifndef __APPLE__

int32_t moonbit_posix__SC_THREAD_ROBUST_PRIO_INHERIT() {
  return _SC_THREAD_ROBUST_PRIO_INHERIT;
}
int32_t moonbit_posix__SC_THREAD_ROBUST_PRIO_PROTECT() {
  return _SC_THREAD_ROBUST_PRIO_PROTECT;
}
int32_t moonbit_posix__SC_V7_ILP32_OFF32() {
  return _SC_V7_ILP32_OFF32;
}
int32_t moonbit_posix__SC_V7_ILP32_OFFBIG() {
  return _SC_V7_ILP32_OFFBIG;
}
int32_t moonbit_posix__SC_V7_LP64_OFF64() {
  return _SC_V7_LP64_OFF64;
}
int32_t moonbit_posix__SC_V7_LPBIG_OFFBIG() {
  return _SC_V7_LPBIG_OFFBIG;
}

int32_t moonbit_posix__CS_POSIX_V7_ILP32_OFF32_CFLAGS() {
  return _CS_POSIX_V7_ILP32_OFF32_CFLAGS;
}
int32_t moonbit_posix__CS_POSIX_V7_ILP32_OFF32_LDFLAGS() {
  return _CS_POSIX_V7_ILP32_OFF32_LDFLAGS;
}
int32_t moonbit_posix__CS_POSIX_V7_ILP32_OFF32_LIBS() {
  return _CS_POSIX_V7_ILP32_OFF32_LIBS;
}
int32_t moonbit_posix__CS_POSIX_V7_ILP32_OFFBIG_CFLAGS() {
  return _CS_POSIX_V7_ILP32_OFFBIG_CFLAGS;
}
int32_t moonbit_posix__CS_POSIX_V7_ILP32_OFFBIG_LDFLAGS() {
  return _CS_POSIX_V7_ILP32_OFFBIG_LDFLAGS;
}
int32_t moonbit_posix__CS_POSIX_V7_ILP32_OFFBIG_LIBS() {
  return _CS_POSIX_V7_ILP32_OFFBIG_LIBS;
}
int32_t moonbit_posix__CS_POSIX_V7_LP64_OFF64_CFLAGS() {
  return _CS_POSIX_V7_LP64_OFF64_CFLAGS;
}
int32_t moonbit_posix__CS_POSIX_V7_LP64_OFF64_LDFLAGS() {
  return _CS_POSIX_V7_LP64_OFF64_LDFLAGS;
}
int32_t moonbit_posix__CS_POSIX_V7_LP64_OFF64_LIBS() {
  return _CS_POSIX_V7_LP64_OFF64_LIBS;
}
int32_t moonbit_posix__CS_POSIX_V7_LPBIG_OFFBIG_CFLAGS() {
  return _CS_POSIX_V7_LPBIG_OFFBIG_CFLAGS;
}
int32_t moonbit_posix__CS_POSIX_V7_LPBIG_OFFBIG_LDFLAGS() {
  return _CS_POSIX_V7_LPBIG_OFFBIG_LDFLAGS;
}
int32_t moonbit_posix__CS_POSIX_V7_LPBIG_OFFBIG_LIBS() {
  return _CS_POSIX_V7_LPBIG_OFFBIG_LIBS;
}
int32_t moonbit_posix__CS_POSIX_V7_WIDTH_RESTRICTED_ENVS() {
  return _CS_POSIX_V7_WIDTH_RESTRICTED_ENVS;
}
int32_t moonbit_posix__CS_V7_ENV() { return _CS_V7_ENV; }

int32_t moonbit_posix__CS_V6_ENV() { return _CS_V6_ENV; }

#endif
#include <stddef.h>
#include <unistd.h>

// https://www.man7.org/linux/man-pages/man0/unistd.h.0p.html

// https://man7.org/linux/man-pages/man3/getcwd.3.html
byte_t* moonbit_posix_getcwd(byte_t* buf, size_t size) {
  return getcwd(buf, size);
}

// https://man7.org/linux/man-pages/man3/confstr.3.html
size_t moonbit_posix_confstr(int32_t name, byte_t* buf, size_t size) {
  return confstr(name, buf, size);
}

// https://man7.org/linux/man-pages/man2/gethostname.2.html
rslt_t moonbit_posix_gethostname(byte_t* name, size_t len) {
  return gethostname(name, len);
}

// https://man7.org/linux/man-pages/man2/sethostname.2.html
rslt_t moonbit_posix_sethostname(byte_t* name, size_t len) {
  return sethostname(name, len);
}

// https://man7.org/linux/man-pages/man2/getgroups.2.html
rslt_t moonbit_posix_getgroups(size_t size, gid_t* list) {
  return getgroups(size, list);
}

// https://man7.org/linux/man-pages/man3/getlogin.3.html
rslt_t moonbit_posix_getlogin_r(byte_t* buf, size_t size) {
  return getlogin_r(buf, size);
}

// https://man7.org/linux/man-pages/man2/nice.2.html
rslt_t moonbit_posix_nice(int32_t inc) { return nice(inc); }

// https://man7.org/linux/man-pages/man2/pause.2.html
rslt_t moonbit_posix_pause() { return pause(); }

// https://man7.org/linux/man-pages/man3/sleep.3.html
uint32_t moonbit_posix_sleep(uint32_t seconds) {
  return sleep(seconds);
}

// https://man7.org/linux/man-pages/man2/alarm.2.html
uint32_t moonbit_posix_alarm(uint32_t seconds) {
  return alarm(seconds);
}

// https://man7.org/linux/man-pages/man2/sync.2.html
void moonbit_posix_sync() { sync(); }

// https://man7.org/linux/man-pages/man3/tcsetpgrp.3.html
rslt_t moonbit_posix_tcsetpgrp(fd_t fd, int32_t pgrp) {
  return tcsetpgrp(fd, pgrp);
}

// https://man7.org/linux/man-pages/man2/tcgetpgrp.2.html
rslt_t moonbit_posix_tcgetpgrp(fd_t fd) { return tcgetpgrp(fd); }

// https://man7.org/linux/man-pages/man3/ttyname_r.3.html
rslt_t moonbit_posix_ttyname_r(fd_t fd, byte_t* buf, size_t size) {
  return ttyname_r(fd, buf, size);
}

// https://man7.org/linux/man-pages/man2/fork.2.html
pid_t moonbit_posix_fork() { return fork(); }
#include <signal.h>

//

// https://man7.org/linux/man-pages/man2/kill.2.html
rslt_t moonbit_posix_kill(pid_t pid, signal_t sig) {
  return kill(pid, sig);
}

// https://man7.org/linux/man-pages/man7/signal.7.html
// https://man7.org/linux/man-pages/man2/signal.2.html
sig_t moonbit_posix_signal(signal_t sig, sig_t handler) {
  return signal(sig, handler);
}
#include <dirent.h>

// https://man7.org/linux/man-pages/man3/fdopendir.3.html
DIR* moonbit_posix_fdopendir(fd_t fd) { return fdopendir(fd); }

// https://man7.org/linux/man-pages/man3/dirfd.3p.html
fd_t moonbit_posix_dirfd(DIR* dirp) { return dirfd(dirp); }

// https://man7.org/linux/man-pages/man3/closedir.3.html
rslt_t moonbit_posix_closedir(DIR* dirp) { return closedir(dirp); }