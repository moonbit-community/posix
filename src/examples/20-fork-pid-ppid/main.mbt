///|
fn main {
  if @posix.fork().is_child() {
    println("Child process PID:  \{@posix.getpid()}")
    println("Child process PPID: \{@posix.getppid()}")
  } else {
    println("Parent process PID:  \{@posix.getpid()}")
    println("Parent process PPID: \{@posix.getppid()}")
  }
}
