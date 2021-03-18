;;
1.0, 2.0

let author = ("Na", "Ao", 200, 60)

let big_tuple = ((3, 'a'), (9.3, "Hello", false))

let firstname, lastname, height, weight = author

let x, y = big_tuple

let f, s, b = y

let first, last, _, _ = author

let _, (_, s, _) = big_tuple

let average p =
  let x, y = p in
  (x +. y) /. 2.

let avg_ans = average (4., 2.)

let pair = (0.34, 1.2)

let _ = average pair

let sum_and_diff (x, y) = (x + y, x - y)

let _ = sum_and_diff (1, 3)
