let _ = [ [] ]

let _ = [ [] ]

let _ = [ [ 3 ] ]

let _ = [ (fun x -> x); (fun b -> not b) ]

let _ =
  let rec downto1 n = match n with 1 -> [ 1 ] | _ -> n :: downto1 (n - 1) in
  downto1 6
