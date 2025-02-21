///|
fn main {
  let (dir, rc_dir) = @native.CStr::from_bytes(b"tmp\x00")
  let (file, rc_file) = @native.CStr::from_bytes(b"input.txt\x00")
  let dirfd = @posix.openat(
    @posix.at_fdcwd, dir, @posix.o_directory, @posix.directory_default_mode,
  )
  let status = @posix.fchownat(
    dirfd,
    file,
    @posix.getuid(),
    @posix.getgid(),
    @posix.at_symlink_follow,
  )
  if status.is_success() {
    println("fchownat successful")
  } else {
    println("fchownat failed")
  }
  rc_dir.release()
  rc_file.release()
  @posix.close(dirfd) |> ignore
}
