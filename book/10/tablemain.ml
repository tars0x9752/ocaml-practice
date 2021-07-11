let ( <<< ) table (key, content) = Table.add key content table

let table =
  Table.empty
  <<< ("a", "the frist letter of the alphabet")
  <<< ("b", "the second letter of the alphabet")
  <<< ("zzz", "sleeping noise")

let () =
  match Table.retrieve "a" table with
  | Some x -> print_endline x
  | None -> ()

let table2 = table <<< ("a", "an indefinite article")

let () =
  match Table.retrieve "a" table with
  | Some x -> print_endline x
  | None -> ()

let () =
  List.iter
    (fun (key, body) -> print_endline (key ^ ": " ^ body))
    (Table.dump table2)
