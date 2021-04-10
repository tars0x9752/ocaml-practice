(* 関数合成 (f ∘ g) のコンビネーター ∘ *)

let ( $ ) f g x = f (g x)

let _ =
  let double x = x * 2 and add_two x = x + 2 in
  (double $ add_two) 5

(* Iコンビネーター (ただの恒等関数) *)
let id f = f

(* Kコンビネーター (ただの定数) *)

let k x y = x

let _ =
  let const17 = k 17 in
  const17 4.0

(* Sコンビネーター (↑の関数合成を一般化したもの) *)

let s x y z = x z (y z)

let _ = s k k 5
