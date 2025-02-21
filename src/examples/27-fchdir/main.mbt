///|
fn main {
  let (dir, rc_dir) = @native.CStr::from_bytes(b"tmp\x00")
  let dirfd = @posix.openat(
    @posix.at_fdcwd, dir, @posix.o_directory, @posix.directory_default_mode,
  )
  let status = @posix.fchdir(dirfd)
  if status.is_success() {
    println("change working directory to tmp")
  } else {
    println("failed to change working directory")
  }
  rc_dir.release()
  @posix.close(dirfd) |> ignore
}
