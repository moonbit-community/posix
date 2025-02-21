///|
fn main {
  @posix.ungetc('c'.to_int(), @posix.stdin_fileptr) |> ignore
  let ch = @posix.fgetc(@posix.stdin_fileptr).to_char()
  println(ch)
}
