type color = Black | Blue | Red | Magenta | Green | White | Cyan | Yellow

type nat = Zero | OneMoreThan of nat

let zero = Zero

let two = OneMoreThan (OneMoreThan Zero)

let rec add m n =
  match m with Zero -> n | OneMoreThan m' -> OneMoreThan (add m' n)

let _ = add Zero (OneMoreThan Zero)

type intlist = INil | ICons of int * intlist

type even = Zero | OMT_E of odd

and odd = OMT_O of even

let rec o_plus_e (OMT_O e1) e2 = OMT_O (e_plus_e e1 e2)

and e_plus_e e1 e2 =
  match e1 with Zero -> e2 | OMT_E o -> OMT_E (o_plus_e o e2)

let _ = o_plus_e (OMT_O Zero) Zero

type 'a mylist = Nil | Cons of 'a * 'a mylist

type 'a with_location = { loc_x : float; loc_y : float; body : 'a }

let loc = { loc_x = 0.0; loc_y = 0.0; body = Black }

let opt = Some 1

let fact n =
  let rec fact' n = if n = 0 then 1 else n * fact' (n - 1) in
  if n < 0 then None else Some (fact' n)

let _ = fact 3

let _ = fact (-10)
