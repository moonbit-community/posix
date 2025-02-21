///|
fn main {
  let buf : FixedArray[Byte] = FixedArray::make(1024, 0)
  @native.Rc::scope_fixedarray(buf, fn(ptr, len) {
    @posix.confstr(@posix._cs_path, ptr, len.to_uint64()) |> ignore
    @posix.fputs(@native.CStr::unsafe_from_byte_ptr(ptr), @posix.stdout_fileptr)
    |> ignore
  })
}
