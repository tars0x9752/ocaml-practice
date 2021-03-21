let rec sum_of_square n = if n = 0 then 0 else sum_of_square (n - 1) + (n * n)

let _ = sum_of_square 3

let rec sum_of_cube n = if n = 0 then 0 else sum_of_cube (n - 1) + (n * n * n)

let _ = sum_of_cube 3

let rec sum_of (f, n) = if n = 0 then 0 else sum_of (f, n - 1) + f n

let square x = x * x

let sum_of_square n = sum_of (square, n)

let _ = sum_of_square 3

let cube x = x * x * x

let sum_of_cube n = sum_of (cube, n)

let _ = sum_of_cube 3

let soc n = sum_of ((fun x -> x * x * x), n)

;;
let sq5 = ((fun x -> x * x), 5) in
sum_of sq5

;;
(fun x -> x * x) 7

let concat (s1, s2) = s1 ^ s2 ^ s1

let concat_curry s1 s2 = s1 ^ s2 ^ s1

let _ = concat_curry "abc" "def"

let emphasize = concat_curry "_"

let _ = emphasize "OCaml"

let _ = ~-3 + ~-5

let _ = 2 + 6

let (===) x y = x = y

let _ = 3 === 3
