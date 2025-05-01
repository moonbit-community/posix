cmake_minimum_required(VERSION 3.5.0)
set(CMAKE_EXPORT_COMPILE_COMMANDS on)
project(posix.mbt VERSION 0.1.0 LANGUAGES C)

set(MOON_HOME $ENV{MOON_HOME})

include_directories(${MOON_HOME}/include)
include_directories(inc)

set(SOURCE_SYS
  src/sys/stat_inode.c
  src/sys/utsname.c
  src/sys/stat.c
  src/sys/uio.c
  src/sys/utsname.c
  src/sys/wait.c
)

set(SOURCE_ROOT
  src/dirent.c
  # src/errno.c
  src/fcntl.c
  src/grp.c
  src/signal.c
  src/stdio.c
  src/stdlib.c
  src/time.c
  src/unistd_at.c
  src/unistd_conf.c
  src/unistd_fd.c
  src/unistd_id.c
  src/unistd.c
)

set(SOURCE "")

list(APPEND SOURCE ${SOURCE_SYS})
list(APPEND SOURCE ${SOURCE_ROOT})

add_library(${PROJECT_NAME} STATIC ${SOURCE})
