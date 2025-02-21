# illusory0x0/posix

## Installation

### Install illusory0x0/native Library

https://github.com/moonbit-community/native

### Install from mooncake

```bash
moon add illusory0x0/posix
```

### Build Static Library

```bash
export MOON_HOME="$HOME/.moon"
mkdir build
cd build
cmake ../stub
cmake --build .
cd ..
```

### Install Static Library

copy `libposix.mbt.a` into /your_project/lib


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