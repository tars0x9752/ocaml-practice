let rec length = function [] -> 0 | _ :: rest -> 1 + length rest

let _ = length []

let _ = length [ 1; 4; 5 ]

let rec append l1 l2 = match l1 with [] -> l2 | v :: l1r -> v :: append l1r l2

let _ = append [ 1; 3 ] [ 2; 4 ]

let _ = [ 1; 2; 3 ] @ [ 4; 5; 6 ]

let rec reverse = function [] -> [] | v :: lr -> reverse lr @ [ v ]

let _ = reverse [ 1; 3; 5 ]

let rec revAppend l1 l2 =
  match l1 with [] -> l2 | v :: l1' -> revAppend l1' (v :: l2)

let _ = revAppend [ 1; 3; 5 ] []

let rec map f l = match l with [] -> [] | v :: rest -> f v :: map f rest

let _ = map abs [ -1; -3; -5 ]

let rec forall f l =
  match l with [] -> true | v :: rest -> f v && forall f rest

let _ = forall (fun x -> x > 3) [ 4; 5; 6 ]

let rec exists f l =
  match l with [] -> false | v :: rest -> f v || forall f rest

let _ = exists (fun x -> x > 3) [ 4; 2; 6 ]

let rec fold_right f l e =
  match l with [] -> e | v :: r -> f v (fold_right f r e)

let rec fold_left f l e =
  match l with [] -> e | v :: r -> fold_left f (f e v) r

let _ =
  let len l = fold_right (fun x y -> 1 + y) l 0 in
  len [ 1; 2; 3 ]

let rec nth n l =
  match (n, l) with
  | 1, a :: _ -> a
  | _, _ :: rest when n > 0 -> nth (n - 1) rest
  | _, _ -> 0

let _ = nth 3 [ 1; 2; 3 ]
