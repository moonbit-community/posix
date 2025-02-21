///|
fn main {
  @posix.close(@posix.stdout_fileno) |> ignore
  @posix.close(@posix.stderr_fileno) |> ignore
  @posix.close(@posix.stdin_fileno) |> ignore
}
