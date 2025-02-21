#include <moonbit_posix_types.h>
#include <time.h>

#ifndef __APPLE__

// FFI namespace moonbit_posix_

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
