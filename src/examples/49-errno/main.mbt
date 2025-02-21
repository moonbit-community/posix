///|
fn main {
  @posix.set_errno(@posix.eacces)
  let e = @posix.get_errno()
  try {
    assert_eq!(e, @posix.eacces)
  } catch {
    _ => println("assert failed")
  }
}
