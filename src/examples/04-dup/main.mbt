///|
fn main {
  let fd = @posix.dup(@posix.stdout_fileno)
  @native.Rc::scope_bytes(b"test dup\n", fn(ptr, len) {
    @posix.write(fd, ptr, len.to_uint64()) |> ignore
  })
  @posix.close(fd) |> ignore
}
