# illusory0x0/posix

## Description

a simple posix API FFI library (WIP).

Provide posix standard in [unistd.h](https://www.man7.org/linux/man-pages/man0/unistd.h.0p.html) most of the functions, the same category of functions only `at` series of functions and functions to support `file descriptor` operations, as far as possible to avoid the use of `CString` to operate the file, such as only `fchownat` and `fchown` no `chown`, first open the file to obtain the `file descriptor` and then operate the file.

Currently waiting for official build system and FFI toolchain support. FFI Tools like [rust bindgen](https://github.com/rust-lang/rust-bindgen)

In [/src/example](https://github.com/moonbit-community/posix/tree/master/src/examples) directory provides a number of useful examples.

Currently supported interfaces can be viewed at [posix.mbti](https://github.com/moonbit-community/posix/blob/master/src/posix/posix.mbti)


## Usage 

Reduce the overhead of static library function calls by enable [lto](https://gcc.gnu.org/onlinedocs/gccint/LTO-Overview.html) when release.


## Name convention

FFI namespace moonbit_posix_

## Recommended Reading

https://stackoverflow.com/questions/36708171/how-can-openat-avoid-tocttou-errors

https://en.wikipedia.org/wiki/Time-of-check_to_time-of-use

https://www.gnu.org/software/libc/manual/html_node/POSIX-Safety-Concepts.html

https://www.gnu.org/software/libc/manual/html_node/POSIX.html

https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/README

https://man7.org/linux/man-pages/man2/syscalls.2.html

https://man7.org/linux/man-pages/man7/pthreads.7.html

https://hackage.haskell.org/package/unix

https://web.archive.org/web/20180331065236/http://nadeausoftware.com/articles/2012/01/c_c_tip_how_use_compiler_predefined_macros_detect_operating_system#OSXiOSandDarwin

### Link option 

https://gcc.gnu.org/onlinedocs/gcc/Directory-Options.html#index-L
