(* raise Division_by_zero *)

(* raise Not_found *)

let f x = if raise Division_by_zero then raise Division_by_zero else x

(* let () = raise (Sys_error "File not found") *)

let rec fact n =
  if n < 0 then raise (Invalid_argument "fact: negative argument")
  else if n = 0 then 1
  else n * fact (n - 1)

let _ = fact 5

(* let _ = fact (-4) *)

let rec find x = function
  | [] -> raise Not_found
  | a :: l when a = x -> 1
  | _ :: l -> 1 + find x l

let _ = find 5 [ 0; 5; 3; 1 ]

let _ = try find 7 [ 0; 8; 7; 3 ] with Not_found -> 0

let rec find' x = function
  | [] -> raise Not_found
  | a :: l when a = x -> 1
  | _ :: l -> 1 + find' x l
 
let find x l = try find' x l with Not_found -> 0

let _ = find 9 []
