type student = { name : string; id : int }

let st1 = { name = "Talo Yamada"; id = 12345 }

and st2 = { id = 123; name = "Ichiro Suzuki" }

let st3 = { st1 with id = 23456 }

let string_of_student { name = n; id = i } = n ^ "'s ID is " ^ string_of_int i

let _ = string_of_student st1
