let _ = "Hello" ^ "World"

let _ =
  let f a b = a ^ " " ^ b in
  f "Hello" "World"

let _ =
  let rec fact n = if n <= 0 then 1 else fact (n - 1) * n in
  fact 4

let _ =
  let rec length = function [] -> 0 | _ :: rest -> length rest + 1 in
  length [ 1; 2; 3; 4; 5 ]

let _ =
  let rec reverse l =
    match l with [] -> [] | h :: rest -> reverse rest @ [ h ]
  in
  reverse [ 1; 2; 3 ]

let _ =
  let rec map fn = function [] -> [] | h :: rest -> fn h :: map fn rest in
  map (fun x -> 2 * x) [ 1; 2; 3 ]
