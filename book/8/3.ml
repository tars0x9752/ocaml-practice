;;
let () = print_string "Hello, " in
print_string "World!\n"

let _ =
  let f x y = 2 in
  f 3 4

let ph s =
  print_endline "Hello, ";
  print_endline s;
  print_newline ()

let () = ph "Yo"

let fact n =
  let i = ref 1 in
  let res = ref 1 in
  while !i <= n do
    res := !res * !i;
    i := !i + 1
  done;
  !res

let _ = fact 3

let parrot () =
  let s = ref "" in
  while
    s := read_line ();
    !s <> "."
  do
    print_endline !s
  done

let _ = parrot ()

let rec iter f = function
  | [] -> ()
  | a :: rest ->
      f a;
      iter f rest

let _ = iter (fun s -> print_endline s) ["Tokyo"; "Shinagaw"; "Shin-Yokohama"]
