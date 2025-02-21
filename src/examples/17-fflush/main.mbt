///|
fn main {
  @native.Rc::scope_bytes(b"test fwrite\n", fn(ptr, len) {
    @posix.fwrite(ptr, 1, len.to_uint64(), @posix.stdout_fileptr) |> ignore
    @posix.fflush(@posix.stdout_fileptr) |> ignore
  })
}
