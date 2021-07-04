exception Foo

exception Bar of int

let hoge x = if x < 0 then raise (Bar x) else true
let _ = hoge (1)
