///|
fn main {
  let (dir, rc_dir) = @native.CStr::from_bytes(b"tmp\x00")
  let status = @posix.faccessat(
    @posix.at_fdcwd, dir, @posix.f_ok, @posix.at_eaccess,
  )
  if status.is_success() {
    println("File exists")
  }
  rc_dir.release()
}
