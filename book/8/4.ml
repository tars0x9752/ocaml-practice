type 'a mlist = MNil | MCons of 'a * 'a mlist ref

type 'a queue = { mutable head : 'a mlist; mutable tail : 'a mlist }

let create () = { head = MNil; tail = MNil }

let q : int queue = create ()

let add a = function
  | { head = MNil; tail = MNil } as q ->
      let c = MCons (a, ref MNil) in
      q.head <- c;
      q.tail <- c
  | { tail = MCons (_, next) } as q ->
      let c = MCons (a, ref MNil) in
      next := c;
      q.tail <- c
  | _ -> failwith "enqueue: input queue broken"

let () = add 1 q

let _ = q

let () =
  add 1 q;
  add 2 q;
  add 3 q

let _ = q
