(* 型推論の流れ *)

(* 
  1 の型 => int 
  x => int
  x * 2 => int
*)
let _ =
  let x = 1 in
  x * 2

let f x = (x, x)

let _ = f "Hello"

let _ =
 fun x ->
  ( (let f y = (x, y) in
     f 4),
    x + 1 )

let twice f x = f (f x)

let _ = twice (fun x -> x + 1) 3

let _ = twice twice (fun x -> x + 1) 3

(* let _ = fun x -> (x 1, x true) *)

(* let _ = fun (x: bool -> 'a) -> (x 1, x true) *)
