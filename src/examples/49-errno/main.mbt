///|
fn main {
  @posix.set_errno(@posix.EACCES)
  let e = @posix.get_errno()
  try {
    assert_eq!(e, @posix.EACCES)
  } catch {
    _ => println("assert failed")
  }
}
