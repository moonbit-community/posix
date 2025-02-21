///|
fn main {
  println("Session ID: \{@posix.getsid(Default::default())}")
  let id = @posix.setsid()
  if id.is_error() {
    println("Failed to set session ID")
  } else {
    println("Session ID set to \{id}")
  }
}
