///|
fn main {
  let (dir, rc_dir) = @native.CStr::from_bytes(b"tmp\x00")
  let dirfd = @posix.openat(
    @posix.at_fdcwd, dir, @posix.o_directory, @posix.directory_default_mode,
  )
  println("link_max: \{@posix.fpathconf(dirfd, @posix._pc_link_max)}")
  println("name_max: \{@posix.fpathconf(dirfd, @posix._pc_name_max)}")
  rc_dir.release()
  @posix.close(dirfd) |> ignore
}
