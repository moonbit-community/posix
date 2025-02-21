///|
fn main {
  let (dir, rc_dir) = @native.CStr::from_bytes(b"tmp\x00")
  let (file, rc_file) = @native.CStr::from_bytes(b"test_dup2.txt\x00")
  let dirfd = @posix.openat(
    @posix.at_fdcwd, dir, @posix.o_directory, @posix.directory_default_mode,
  )
  let fd = @posix.openat(
    dirfd,
    file,
    @posix.o_creat | @posix.o_rdwr | @posix.o_trunc,
    @posix.file_default_mode,
  )
  let newfd = @posix.dup2(fd, @posix.stdout_fileno)
  @native.Rc::scope_bytes(b"hello world", fn(ptr, len) {
    @posix.write(@posix.stdout_fileno, ptr, len.to_uint64()) |> ignore
  })
  rc_dir.release()
  rc_file.release()
  @posix.close(fd) |> ignore
  @posix.close(dirfd) |> ignore
}
