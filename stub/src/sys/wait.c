#include <moonbit_posix_types.h>
#include <sys/wait.h>

// FFI namespace moonbit_posix_

// https://man7.org/linux/man-pages/man2/wait.2.html
int32_t moonbit_posix_wait(void* wstatus) {
  return wait(wstatus);
}

// https://man7.org/linux/man-pages/man2/wait.2.html
int32_t moonbit_posix_waitpid(int32_t pid, void* wstatus, int32_t options) {
  return waitpid(pid, wstatus, options );
}

// https://man7.org/linux/man-pages/man2/wait.2.html
int32_t moonbit_posix_waitid(int32_t idtype, int32_t id, void* infop, int32_t options) {
  return waitid(idtype, id, infop, options);
}

// https://man7.org/linux/man-pages/man2/wait4.2.html
int32_t moonbit_posix_wait4(int32_t pid, void* wstatus, int32_t options, void* rusage) {
  return wait4(pid, wstatus, options, rusage);
}