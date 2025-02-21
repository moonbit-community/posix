///|
fn main {
  let buf_groups = FixedArray::make(1024, Default::default())
  let groups = @native.Rc::scope_fixedarray(buf_groups, fn(ptr, len) {
    let len = @posix.getgroups(len.to_uint64(), ptr)
    FixedArray::makei(len.to_int(), fn(i) { buf_groups[i] })
  })
  println("groups id: \{groups}")
}
