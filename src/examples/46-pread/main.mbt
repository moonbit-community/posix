///|
fn main {
  let (dir, rc_dir) = @native.CStr::from_bytes(b"tmp\x00")
  let (file, rc_file) = @native.CStr::from_bytes(b"input.txt\x00")
  let dirfd = @posix.openat(
    @posix.at_fdcwd, dir, @posix.o_directory, @posix.directory_default_mode,
  )
  let fd = @posix.openat(dirfd, file, @posix.o_rdonly, @posix.file_default_mode)
  let rbuf : FixedArray[Byte] = FixedArray::make(1024, 0)
  let (mode, rc_mode) = @native.CStr::from_bytes(b"r\x00")
  @native.Rc::scope_fixedarray(rbuf, fn(ptr, len) {
    @posix.read(fd, ptr, len.to_uint64()) |> ignore
    @posix.fputs(@native.CStr::unsafe_from_byte_ptr(ptr), @posix.stdout_fileptr)
    |> ignore
    @posix.fputc('\n'.to_int(), @posix.stdout_fileptr) |> ignore
    @posix.pread(fd, ptr, len.to_uint64(), 0) |> ignore
    @posix.fputs(@native.CStr::unsafe_from_byte_ptr(ptr), @posix.stdout_fileptr)
    |> ignore
    @posix.fflush(@posix.stdout_fileptr) |> ignore
  })
  rc_dir.release()
  rc_file.release()
  rc_mode.release()
  @posix.close(fd) |> ignore
  @posix.close(dirfd) |> ignore
}
