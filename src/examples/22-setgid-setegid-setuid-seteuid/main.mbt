///|
fn main {
  let gid = @posix.Gid::unsafe_from_uint(2000)
  let uid = @posix.Uid::unsafe_from_uint(2000)
  if @posix.setgid(gid).is_error() {
    println("Failed to set GID")
  }
  if @posix.setegid(gid).is_error() {
    println("Failed to set EGID")
  }
  if @posix.setuid(uid).is_error() {
    println("Failed to set UID")
  }
  if @posix.seteuid(uid).is_error() {
    println("Failed to set EUID")
  }
  println("GID: \{@posix.getgid()}")
  println("EGID: \{@posix.getegid()}")
  println("EUID: \{@posix.geteuid()}")
  println("UID: \{@posix.getuid()}")
  println("SID: \{@posix.getsid(Default::default())}")
}
