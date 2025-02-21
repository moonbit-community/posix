///|
fn main {
  @native.Rc::scope_bytes(b"moonbit", fn(ptr, len) {
    @posix.sethostname(ptr, len.to_uint64()) |> ignore
  })
  let arr : FixedArray[Byte] = FixedArray::make(1024, 0)
  @native.Rc::scope_fixedarray(arr, fn(ptr, len) {
    @posix.gethostname(ptr, len.to_uint64()) |> ignore
    @posix.fputs(@native.CStr::unsafe_from_byte_ptr(ptr), @posix.stdout_fileptr)
    |> ignore
  })
}
