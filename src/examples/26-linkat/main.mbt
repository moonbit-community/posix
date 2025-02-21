///|
fn main {
  let (dir, rc_dir) = @native.CStr::from_bytes(b"tmp\x00")
  let dirfd = @posix.openat(
    @posix.at_fdcwd, dir, @posix.o_directory, @posix.directory_default_mode,
  )
  let (old, rc_old) = @native.CStr::from_bytes(b"input.txt\x00")
  let (new, rc_new) = @native.CStr::from_bytes(b"output.txt\x00")
  let status = @posix.linkat(dirfd, old, dirfd, new, @posix.at_symlink_follow)
  if status.is_success() {
    println("linkat succeeded")
  } else {
    println("linkat failed")
  }
  rc_old.release()
  rc_dir.release()
  rc_new.release()
  @posix.close(dirfd) |> ignore
}
