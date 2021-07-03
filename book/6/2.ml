type figure = Point | Circle of int | Rectangle of int * int | Square of int

let c = Circle 3

let figs = [ Point; Square 5; Rectangle (4, 5); c ]

let area_of_figure = function
  | Point -> 0
  | Circle r -> r * r * 3
  | Rectangle (x, y) -> x * y
  | Square x -> x * x

let _ = area_of_figure (Circle 5)

let _ = area_of_figure (Rectangle (1, 2))

let _ = List.map area_of_figure figs

let similar x y =
  match (x, y) with
  | Point, Point | Circle _, Circle _ | Square _, Square _ -> true
  | Rectangle (l1, l2), Rectangle (l3, l4) -> (l3 * l2) - (l1 * l4) = 0
  | _ -> false

let _ = similar (Rectangle (2, 4)) (Rectangle (1, 2))
