///|
fn main {
  let (dir, rc_dir) = @posix.CStr::from_bytes(b"tmp\x00")
  let (file, rc_file) = @posix.CStr::from_bytes(b"test.txt\x00")
  let (mode, rc_mode) = @posix.CStr::from_bytes(b"wr\x00")
  let dirfd = @posix.openat(
    @posix.at_fdcwd, dir, @posix.o_directory, @posix.directory_default_mode,
  )
  let fd = @posix.openat(
    dirfd,
    file,
    @posix.o_creat | @posix.o_rdwr | @posix.o_trunc,
    @posix.file_default_mode,
  )
  let fileptr = @posix.fdopen(fd, mode)
  @posix.fclose(fileptr) |> ignore
  rc_dir.release()
  rc_file.release()
  rc_mode.release()
  @posix.close(fd) |> ignore
  @posix.close(dirfd) |> ignore
}
