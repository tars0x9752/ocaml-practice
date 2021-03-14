let pi = 3.1415

let area_of_circle r = r *. r *. pi

(* パラメーターの型 -> 結果の型 *)

;;
area_of_circle 2.

let aoc (r : float) : float = r *. r *. pi

;;
aoc 2.
