///|
fn main {
  let pipefd : FixedArray[@posix.Fd] = FixedArray::make(2, Default::default())
  @native.Rc::scope_fixedarray(pipefd, fn(ptr, len) {
    @posix.pipe(ptr) |> ignore
  })
  let fd_read = pipefd[0]
  let fd_write = pipefd[1]
  let cpid = @posix.fork()
  if cpid.is_child() { // child process
    @posix.close(fd_write) |> ignore
    let buf : FixedArray[Byte] = FixedArray::make(1024, 0)
    @native.Rc::scope_fixedarray(buf, fn(ptr, len) {
      let len = @posix.read(fd_read, ptr, len.to_uint64()).to_int()
      @posix.write(@posix.stdout_fileno, ptr.to_const_ptr(), len.to_uint64())
      |> ignore
    })
  } else { // parent process
    @posix.close(fd_read) |> ignore
    @native.Rc::scope_bytes(b"hello world\n", fn(ptr, len) {
      @posix.write(fd_write, ptr, len.to_uint64()) |> ignore
    })
    @posix.wait(@native.Ptr::null_pointer()) |> ignore
  }
}
