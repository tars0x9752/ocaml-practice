let rec fact n = if n <= 1 then 1 else fact (n - 1) * n

let _ = fact 4

let square x = x * x

let _ = square 2

let rec fib n = if n = 1 || n = 2 then 1 else fib (n - 1) + fib (n - 2)

let _ = fib 5

let fib2 n =
  let rec fib_p n =
    if n = 1 then (1, 0)
    else
      let i, j = fib_p (n - 1) in
      (i + j, i)
  in
  let i, _ = fib_p n in
  i

let rec gcd (n, m) =
  if n < m then gcd (m, n)
  else
    let nmod = n mod m in
    if nmod = 0 then m else gcd (m, nmod)

let _ = gcd (9, 6)

let rec comb (n, r) =
  if r > n then 0
  else if n = r || r = 0 then 1
  else comb (n - 1, r) + comb (n - 1, r - 1)

let _ = comb (4, 3)

let arctan1 item =
  let rec positive n = negative (n - 1) +. (1. /. float_of_int ((4 * n) + 1))
  and negative n =
    if n < 0 then 0. else positive n -. (1. /. float_of_int ((4 * n) + 3))
  in
  positive item

let _ = arctan1 200 *. 4.

let facto n =
  let rec iterfact (i, res) =
    if i > n then res else iterfact (i + 1, res * i)
  in
  iterfact (1, 1)

let _ = facto 4
