///|
fn main {
  let (dir, rc_dir) = @native.CStr::from_bytes(b"tmp\x00")
  let (file, rc_file) = @native.CStr::from_bytes(b"output.txt\x00")
  let dirfd = @posix.openat(
    @posix.at_fdcwd, dir, @posix.o_directory, @posix.directory_default_mode,
  )
  let fd = @posix.openat(
    dirfd,
    file,
    @posix.o_creat | @posix.o_rdwr | @posix.o_trunc,
    @posix.file_default_mode,
  )
  let wbuf : Bytes = b"hello world"
  @native.Rc::scope_bytes(b"hello world!", fn(ptr, len) {
    @posix.write(fd, ptr, len.to_uint64()) |> ignore
    @posix.pwrite(fd, ptr, len.to_uint64(), 0) |> ignore
  })
  rc_dir.release()
  rc_file.release()
  @posix.close(fd) |> ignore
  @posix.close(dirfd) |> ignore
}
