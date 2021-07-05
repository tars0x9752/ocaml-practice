let words_channel = open_in "words.md"

let rec reader () =
  try
    let line = input_line words_channel in
    print_endline line;
    reader ()
  with End_of_file -> close_in words_channel

let () = reader ()
