#include <moonbit_posix_types.h>
#include <stddef.h>
#include <stdio.h>

// FFI namespace moonbit_posix_

// https://www.man7.org/linux/man-pages/man0/stdio.h.0p.html
// https://man7.org/linux/man-pages/man3/stdio.3.html

FILE* moonbit_posix_stdout() { return stdout; }

FILE* moonbit_posix_stdin() { return stdin; }

FILE* moonbit_posix_stderr() { return stderr; }

int32_t moonbit_posix_fputc(int32_t ch, FILE* stream) {
  return fputc(ch, stream);
}

// https://man7.org/linux/man-pages/man3/fputs.3p.html
frslt_t moonbit_posix_fputs(cstr_t str, FILE* stream) {
  return fputs(str, stream);
}

int32_t moonbit_posix_fgetc(FILE* stream) { return fgetc(stream); }

// https://man7.org/linux/man-pages/man3/fgets.3p.html
char* moonbit_posix_fgets(char* buf, int32_t size, FILE* stream) {
  return fgets(buf, size, stream);
}

// https://www.man7.org/linux/man-pages/man3/ungetc.3p.html
int32_t moonbit_posix_ungetc(int32_t ch, FILE* stream) {
  return ungetc(ch, stream);
}

int32_t moonbit_posix_EOF() { return EOF; }

// https://man7.org/linux/man-pages/man3/fflush.3.html
frslt_t moonbit_posix_fflush(FILE* stream) { return fflush(stream); }

// https://man7.org/linux/man-pages/man3/fclose.3.html
frslt_t moonbit_posix_fclose(FILE* stream) { return fclose(stream); }

// https://man7.org/linux/man-pages/man3/fwrite.3p.html
size_t moonbit_posix_fread(
    byte_t* ptr,
    size_t size,
    size_t nmemb,
    FILE* stream) {
  return fread(ptr, size, nmemb, stream);
}

// https://man7.org/linux/man-pages/man3/fwrite.3p.html
size_t moonbit_posix_fwrite(
    const byte_t* ptr,
    size_t size,
    size_t n,
    FILE* stream) {
  return fwrite(ptr, size, n, stream);
}

buf_mode_t moonbit_posix__IOFBF() { return _IOFBF; }

buf_mode_t moonbit_posix__IOLBF() { return _IOLBF; }

buf_mode_t moonbit_posix__IONBF() { return _IONBF; }

size_t moonbit_posix_BUFSIZ() { return BUFSIZ; }

// https://man7.org/linux/man-pages/man3/setvbuf.3p.html
int32_t moonbit_posix_setvbuf(
    FILE* stream,
    char* buf,
    buf_mode_t mode,
    size_t size) {
  return setvbuf(stream, buf, mode, size);
}

// https://man7.org/linux/man-pages/man3/fdopen.3p.html
FILE* moonbit_posix_fdopen(fd_t fd, cstr_t mode) {
  return fdopen(fd, mode);
}

// https://man7.org/linux/man-pages/man2/rename.2.html
rslt_t moonbit_posix_renameat(
    fd_t olddirfd,
    cstr_t oldpath,
    fd_t newdirfd,
    cstr_t newpath) {
  return renameat(olddirfd, oldpath, newdirfd, newpath);
}