#include <moonbit_posix_types.h>
#include <time.h>
#include <unistd.h>

// FFI namespace moonbit_posix_

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