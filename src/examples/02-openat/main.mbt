///|
using @native {type CStr}

///|
fn main {
  let (dir, rc_dir) = CStr::from_bytes(b"tmp\x00")
  let (file, rc_file) = CStr::from_bytes(b"openat.txt\x00")
  let dirfd = @posix.openat(
    @posix.at_fdcwd, dir, @posix.o_directory, @posix.directory_default_mode,
  )
  let fd = @posix.openat(
    dirfd,
    file,
    @posix.o_creat | @posix.o_rdwr | @posix.o_trunc,
    @posix.file_default_mode,
  )
  rc_dir.release()
  rc_file.release()
  @posix.close(fd) |> ignore
  @posix.close(dirfd) |> ignore
}
