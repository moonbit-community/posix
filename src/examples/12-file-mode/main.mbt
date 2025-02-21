///|
fn main {
  try {
    assert_eq!(@posix.s_irwxo, @posix.s_iroth | @posix.s_iwoth | @posix.s_ixoth)
    assert_eq!(@posix.s_irwxg, @posix.s_irgrp | @posix.s_iwgrp | @posix.s_ixgrp)
    assert_eq!(@posix.s_irwxu, @posix.s_irusr | @posix.s_iwusr | @posix.s_ixusr)
  } catch {
    _ => println("assertion failed")
  }
}
