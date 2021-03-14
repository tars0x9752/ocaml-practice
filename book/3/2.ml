let abs x = if x > 0 then x else -x

;;
abs 4

;;
abs (-4)

;;
-0

let pi = 3.1415

let aoc r = if r > 0. then (r ** 2.) *. pi else 0.

;;
aoc 3.

;;
aoc 0.

;;
3 > 0

;;
4. > 5.3

let is_positive x = x > 0

;;
is_positive 5

;;
is_positive (-5)

;;
1 = 1

;;
1 <> 1

;;
not (1 = 1)
