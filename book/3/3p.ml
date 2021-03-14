let rate = 114.32

let round x = floor (x +. 0.5)

let d_to_y d =
  let y_raw = round (d *. rate) in
  int_of_float y_raw

;;
d_to_y 1.6

let y_to_d y = round (float_of_int y /. rate)

;;
y_to_d 228

let describe_d_to_y d =
  let y = d_to_y d in
  string_of_float d ^ " dollars are " ^ string_of_int y ^ " yen."

;;
describe_d_to_y 1.

let capitalize c =
  let char_a_int = int_of_char 'a'
  and char_z_int = int_of_char 'z'
  and char_A_int = int_of_char 'A' in
  let c_int = int_of_char c in
  if c_int >= char_a_int && c_int <= char_z_int then
    char_of_int (c_int - char_a_int + char_A_int)
  else c

;;
capitalize 'g'
