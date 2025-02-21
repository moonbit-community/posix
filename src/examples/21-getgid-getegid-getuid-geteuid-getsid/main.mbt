///|
fn main {
  println("GID: \{@posix.getgid()}")
  println("EGID: \{@posix.getegid()}")
  println("EUID: \{@posix.geteuid()}")
  println("UID: \{@posix.getuid()}")
  println("SID: \{@posix.getsid(Default::default())}")
}
