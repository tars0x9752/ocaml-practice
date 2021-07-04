let rec find x = function
  | [] -> 0
  | a :: l when a = x -> 1
  | _ :: l -> 1 + find x l

let _ = find 7 [ 0; 8; 7; 3 ]

let _ = find 9 []

let _ = find 9 [ 0; 8; 7; 3 ]

let rec nth n l =
  match (n, l) with
  | n, _ when n <= 0 -> None
  | 1, a :: _ -> Some a
  | _, _ :: rest -> nth (n - 1) rest
  | _, [] -> None

let _ = nth 2 [ 0; 8; 7; 3 ]

let _ = nth 9 [ 0; 8; 7; 3 ]
