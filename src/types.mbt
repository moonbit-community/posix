///|
type Fd Int derive(Default, Eq, Show)

///|
type Gid UInt derive(Default, Eq, Show)

///|
pub fn Gid::unsafe_from_uint(x : UInt) -> Gid = "%identity"

///|
pub fn Uid::unsafe_from_uint(x : UInt) -> Uid = "%identity"

///|
pub fn Sid::unsafe_from_uint(x : UInt) -> Sid = "%identity"

///|
type Uid UInt derive(Default, Eq, Show)

///|
type Pid Int derive(Default, Eq, Show)

///|
pub fn Pid::unsafe_from_int(x : Int) -> Pid = "%identity"

///|
type Sid Int derive(Default, Eq, Show)

///|
pub fn Sid::is_error(self : Sid) -> Bool {
  self._ == -1
}

///|
typealias OptSize = Int64

///|
typealias Off = Int64

///|
typealias Size = UInt64

///|
type Mode UInt derive(Default, Eq, Show) // TODO

///|
type Rslt Int derive(Default, Eq, Show)

///|
pub fn Rslt::is_success(x : Rslt) -> Bool {
  x._ == 0
}

///|
pub fn Rslt::is_error(x : Rslt) -> Bool {
  x._ == -1
}

///|
type FRslt Int derive(Default, Eq, Show)

///|
type Signal Int derive(Default, Eq, Show)

///|
type Errno Int derive(Default, Eq, Show)

///|
type AtFlag Int derive(Default, Eq, Show)

///|
type OpenFlag Int derive(Default, Eq, Show)

///|
type Whence Int derive(Default, Eq, Show)

///|
type FcntlCmd Int derive(Default, Eq, Show)

///|
type BufMode Int derive(Default, Eq, Show)

///|
type AccessMode Int derive(Default, Eq, Show)

///|
pub fn Pid::is_child(self : Pid) -> Bool {
  self._ == 0
}

///|
pub fn Pid::is_error(self : Pid) -> Bool {
  self._ == -1
}
