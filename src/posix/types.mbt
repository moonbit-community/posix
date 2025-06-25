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
  self.inner() == -1
}

///|
typealias Int64 as OptSize

///|
typealias Int64 as Off

///|
typealias UInt64 as Size

///|
type Mode UInt derive(Default, Eq, Show) // TODO

///|
type Rslt Int derive(Default, Eq, Show)

///|
pub fn Rslt::is_success(x : Rslt) -> Bool {
  x.inner() == 0
}

///|
pub fn Rslt::is_error(x : Rslt) -> Bool {
  x.inner() == -1
}

///|
type FRslt Int derive(Default, Eq, Show)

///|
type Signal Int derive(Default, Eq, Show)

///|
typealias Int as Errno

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
  self.inner() == 0
}

///|
pub fn Pid::is_error(self : Pid) -> Bool {
  self.inner() == -1
}
