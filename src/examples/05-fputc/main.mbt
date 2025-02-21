///|
fn main {
  fn putc(ch) {
    @posix.fputc(ch, @posix.stdout_fileptr)
  }

  let bytes = b"test fputc\n"
  for i in 0..<bytes.length() {
    putc(bytes[i].to_int()) |> ignore
  }
}
