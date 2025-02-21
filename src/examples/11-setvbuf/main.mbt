///|
fn main {
  let len = 1UL << 17 // 128kb set your L1 cache size
  let buf = @native.malloc(len)
  @posix.setvbuf(@posix.stdout_fileptr, buf, @posix._iofbf, len) |> ignore
  @posix.setvbuf(
    @posix.stdout_fileptr,
    @posix.Ptr::null_pointer(),
    @posix._iofbf,
    @posix.bufsiz,
  )
  |> ignore
}
