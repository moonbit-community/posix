///|
fn main {
  @native.Rc::scope_bytes(b"test fputs\n\x00", fn(ptr, len) {
    let cstr = @native.CStr::unsafe_from_const_byte_ptr(ptr)
    @posix.fputs(cstr, @posix.stdout_fileptr) |> ignore
  })
}
