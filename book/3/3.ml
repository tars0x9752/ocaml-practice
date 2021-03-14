let pi = 3.1415

let vol_cone =
  let base = pi *. 2. *. 2. in
  base *. 5. /. 3.

let cone_of_height_two r =
  let base = r *. r *. pi in
  base *. 2.0 /. 3.

;;
cone_of_height_two 5.

let f x =
  let x3 = x * x * x in
  let x3_1 = x3 + 1 in
  x3 + x3_1

;;
f 2

let g x =
  let power3 x = x * x * x in
  power3 x + power3 (x + 1)

;;
g 2

let x = 2

and y = 1

let x = y

and y = x

let z =
  let f x = "foo" ^ x and y = 3.1 in
  f (string_of_float y)
