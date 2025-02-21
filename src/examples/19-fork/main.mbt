///|
fn main {
  if @posix.fork().is_child() {
    println("Hello from child process")
  } else {
    println("Hello from parent process")
  }
}
