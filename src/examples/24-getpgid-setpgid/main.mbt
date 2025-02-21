///|
fn main {
  println("GID: \{@posix.getpgid(@posix.Pid::unsafe_from_int(0))}")
  let gid = @posix.setpgid(
    Default::default(),
    @posix.Pid::unsafe_from_int(2000),
  )
  if gid.is_error() {
    println("Error: failed to set gid")
  } else {
    println("PID: \{gid}")
  }
}
