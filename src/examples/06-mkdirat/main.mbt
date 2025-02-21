///|
fn main {
  let (dir, rc_dir) = @native.CStr::from_bytes(b"tmp\x00")
  let (test_dir, rc_test_dir) = @native.CStr::from_bytes(b"test_dir\x00")
  let dirfd = @posix.openat(
    @posix.at_fdcwd, dir, @posix.o_directory, @posix.directory_default_mode,
  )
  @posix.mkdirat(dirfd, test_dir, @posix.directory_default_mode) |> ignore
  rc_dir.release()
  rc_test_dir.release()
}
