///|
pub impl BitOr for OpenFlag with lor(self, other) {
  self.inner() | other.inner()
}

///|
pub impl BitOr for Mode with lor(self, other) {
  self.inner() | other.inner()
}
