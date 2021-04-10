let fst_int ((x, y) : int * int) = x

let fst (x, y) = x

let _ = fst (4, 3.5)

let id x = x

let apply f x = f x

let _ = apply abs ~-5
