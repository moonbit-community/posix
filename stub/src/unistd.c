#include <moonbit_posix_types.h>
#include <stddef.h>
#include <unistd.h>

// FFI namespace moonbit_posix_

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