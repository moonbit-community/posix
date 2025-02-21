///|
fn main {
  if @posix.isatty(@posix.stdout_fileno) == 1 {
    println("stdout_fileno is a tty")
  } else {
    println("stdout_fileno isn't a tty")
  }
}
