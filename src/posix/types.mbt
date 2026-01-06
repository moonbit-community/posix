///|
struct Fd(Int) derive(Default, Eq, Show)

///|
struct Gid(UInt) derive(Default, Eq, Show)

///|
pub fn Gid::unsafe_from_uint(x : UInt) -> Gid = "%identity"

///|
pub fn Uid::unsafe_from_uint(x : UInt) -> Uid = "%identity"

///|
pub fn Sid::unsafe_from_uint(x : UInt) -> Sid = "%identity"

///|
struct Uid(UInt) derive(Default, Eq, Show)

///|
struct Pid(Int) derive(Default, Eq, Show)

///|
pub fn Pid::unsafe_from_int(x : Int) -> Pid = "%identity"

///|
struct Sid(Int) derive(Default, Eq, Show)

///|
pub fn Sid::is_error(self : Sid) -> Bool {
  self.inner() == -1
}

///|
typealias Int64 as OptSize

///|
typealias Int64 as Off

///|
typealias UInt64 as Size

///|
struct Mode(UInt) derive(Default, Eq, Show) // TODO

///|
struct Rslt(Int) derive(Default, Eq, Show)

///|
pub fn Rslt::is_success(x : Rslt) -> Bool {
  x.inner() == 0
}

///|
pub fn Rslt::is_error(x : Rslt) -> Bool {
  x.inner() == -1
}

///|
struct FRslt(Int) derive(Default, Eq, Show)

///|
struct Signal(Int) derive(Default, Eq, Show)

///|
typealias Int as Errno

///|
struct AtFlag(Int) derive(Default, Eq, Show)

///|
struct OpenFlag(Int) derive(Default, Eq, Show)

///|
struct Whence(Int) derive(Default, Eq, Show)

///|
struct FcntlCmd(Int) derive(Default, Eq, Show)

///|
struct BufMode(Int) derive(Default, Eq, Show)

///|
struct AccessMode(Int) derive(Default, Eq, Show)

///|
pub fn Pid::is_child(self : Pid) -> Bool {
  self.inner() == 0
}

///|
pub fn Pid::is_error(self : Pid) -> Bool {
  self.inner() == -1
}
