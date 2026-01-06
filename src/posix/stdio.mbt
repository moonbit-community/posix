///|
#external
type FILE

///|
extern "c" fn _stdout() -> Ptr[FILE] = "moonbit_posix_stdout"

///|
extern "c" fn _stdin() -> Ptr[FILE] = "moonbit_posix_stdin"

///|
extern "c" fn _stderr() -> Ptr[FILE] = "moonbit_posix_stderr"

///|
pub let stdout_fileptr : Ptr[FILE] = _stdout()

///|
pub let stdin_fileptr : Ptr[FILE] = _stdin()

///|
pub let stderr_fileptr : Ptr[FILE] = _stderr()

///|
/// https://www.man7.org/linux/man-pages/man3/fputc.3p.html
pub extern "c" fn fputc(byte : Int, stream : Ptr[FILE]) -> FRslt = "moonbit_posix_fputc"

///|
/// https://man7.org/linux/man-pages/man3/fputs.3p.html
pub extern "c" fn fputs(string : CStr, stream : Ptr[FILE]) -> FRslt = "moonbit_posix_fputs"

///|
extern "c" fn _EOF() -> FRslt = "moonbit_posix_EOF"

///|
pub let eof : FRslt = _EOF()

///|
pub fn FRslt::to_char(self : FRslt) = "%char_to_int"

///|
/// https://man7.org/linux/man-pages/man3/fgetc.3.html
pub extern "c" fn fgetc(stream : Ptr[FILE]) -> FRslt = "moonbit_posix_fgetc"

///|
/// https://man7.org/linux/man-pages/man3/fgets.3p.html
pub extern "c" fn fgets(
  s : Ptr[Byte],
  n : Int,
  stream : Ptr[FILE],
) -> Ptr[Byte] = "moonbit_posix_fgets"

///|
/// https://www.man7.org/linux/man-pages/man3/ungetc.3p.html
pub extern "c" fn ungetc(ch : Int, stream : Ptr[FILE]) -> FRslt = "moonbit_posix_ungetc"

///|
extern "c" fn __IOFBF() -> BufMode = "moonbit_posix__IOFBF"

///|
extern "c" fn __IOLBF() -> BufMode = "moonbit_posix__IOLBF"

///|
extern "c" fn __IONBF() -> BufMode = "moonbit_posix__IONBF"

///|
extern "c" fn _BUFSIZ() -> Size = "moonbit_posix_BUFSIZ"

///|
pub let _iofbf : BufMode = __IOFBF()

///|
pub let _iolbf : BufMode = __IOLBF()

///|
pub let _ionbf : BufMode = __IONBF()

///|
pub let bufsiz : Size = _BUFSIZ()

///|
/// https://man7.org/linux/man-pages/man3/fwrite.3p.html
pub extern "c" fn fwrite(
  ptr : ConstPtr[Byte],
  size : Size,
  n : Size,
  stream : Ptr[FILE],
) -> Size = "moonbit_posix_fwrite"

///|
/// https://man7.org/linux/man-pages/man3/fread.3.html
pub extern "c" fn fread(
  ptr : Ptr[Byte],
  size : Size,
  n : Size,
  stream : Ptr[FILE],
) -> Size = "moonbit_posix_fread"

///|
/// https://man7.org/linux/man-pages/man3/fflush.3.html
pub extern "c" fn fflush(stream : Ptr[FILE]) -> FRslt = "moonbit_posix_fflush"

///|
/// https://man7.org/linux/man-pages/man3/setvbuf.3p.html
pub extern "c" fn setvbuf(
  stream : Ptr[FILE],
  buf : Ptr[Byte],
  mode : BufMode,
  size : Size,
) -> FRslt = "moonbit_posix_setvbuf"

///|
/// https://man7.org/linux/man-pages/man3/fclose.3.html
pub extern "c" fn fclose(stream : Ptr[FILE]) -> FRslt = "moonbit_posix_fclose"

///|
/// https://man7.org/linux/man-pages/man3/fdopen.3p.html
pub extern "c" fn fdopen(fd : Fd, mode : CStr) -> Ptr[FILE] = "moonbit_posix_fdopen"
