#include <moonbit_posix_types.h>
#include <signal.h>

// // FFI namespace moonbit_posix_

// https://man7.org/linux/man-pages/man2/kill.2.html
rslt_t moonbit_posix_kill(pid_t pid, signal_t sig) {
    return kill(pid, sig);
}

// https://man7.org/linux/man-pages/man7/signal.7.html
// https://man7.org/linux/man-pages/man2/signal.2.html
sig_t moonbit_posix_signal(signal_t sig, sig_t handler) {
    return signal(sig, handler);
}