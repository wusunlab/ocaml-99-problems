(** Flatten a nested list structure.

    # (* There is no nested list type in OCaml, so we need to define one
         first. A node of a nested list is either an element, or a list of
         nodes. *)
      type 'a node =
        | One of 'a 
        | Many of 'a node list;;
    type 'a node = One of 'a | Many of 'a node list
 *)

type 'a node = One of 'a | Many of 'a node list

(* non tail-recursive flatten *)
let rec flatten = function
  | [] -> []
  | One x :: tl -> x :: flatten tl
  | Many xs :: tl -> flatten xs @ flatten tl

(* tail-recursive flatten *)
let rec flatten_trec xs =
  let rec aux acc = function
    | [] -> acc
    | One x :: tl -> aux (x :: acc) tl
    | Many l :: tl -> aux (aux acc l) tl
  in
  List.rev (aux [] xs)
