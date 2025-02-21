///|
fn main {
  let (path_ls, rc_path_ls) = @native.CStr::from_bytes(b"/bin/ls\x00")
  let fd_ls = @posix.openat(
    @posix.at_fdcwd, path_ls, @posix.o_rdonly, @posix.file_default_mode,
  )

  // https://github.com/moonbitlang/moonbit-docs/issues/440
  let mem_argv = @native.malloc(
    2UL * @native.size_of_uint64.reinterpret_as_uint64(),
  )
  let mem_env = @native.malloc(
    1UL * @native.size_of_uint64.reinterpret_as_uint64(),
  )
  let argv : @native.Ptr[@native.CStr] = {
    let ptr : @native.Ptr[UInt64] = mem_argv |> @native.unsafe_coerce
    ptr.set(path_ls.reinterpret_as_const_byte_ptr().reinterpret_as_uint64())
    ptr.add(1).set(0) // The argv array must be terminated by a null pointer. 
    @native.unsafe_coerce(ptr)
  }
  let env : @native.Ptr[@native.CStr] = {
    let ptr : @native.Ptr[UInt64] = mem_env |> @native.unsafe_coerce
    ptr.set(0) // // The argv array must be terminated by a null pointer.
    @native.unsafe_coerce(ptr)
  }
  let status = @posix.fexecve(fd_ls, argv.to_const_ptr(), env.to_const_ptr())
  if status.is_error() {
    println("fexecve failed")
  }

  // if `fexecve` success, below never be executed
  @native.free(mem_argv)
  @native.free(mem_env)
  rc_path_ls.release()
  @posix.close(fd_ls) |> ignore
}
