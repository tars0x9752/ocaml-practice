let str = "hello"

let _ = str.[2]

type teacher = { name : string; mutable office : string }

let t = { name = "Igarashi"; office = "140" }

let () = t.office <- "142"

let _ = t

let p = ref 5

let q = ref 2

let _ = (!p, !q)

let _ = p := !p + !q

let _ = p

let arr = [| 1; 2 |]

let () = arr.(0) <- 3

let _ = arr

let x = ref []

let _ = 2 :: !x

let _ = x := [1]
