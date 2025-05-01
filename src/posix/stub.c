#include <errno.h>
int moonbit_posix_get_errno() { return errno; }
void moonbit_posix_set_errno(int e) { errno = e; }