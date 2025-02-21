///|
fn main {
  let buf : FixedArray[Byte] = FixedArray::make(1024, 0)
  @native.Rc::scope_fixedarray(buf, fn(ptr, len) {
    @posix.getcwd(ptr, len.to_uint64()) |> ignore
    @posix.fputs(@native.CStr::unsafe_from_byte_ptr(ptr), @posix.stdout_fileptr)
    |> ignore
  })
  @posix.fputc('\n'.to_int(), @posix.stdout_fileptr) |> ignore
}
