(** Reverse a list.

    # rev ["a" ; "b" ; "c"];;
    - : string list = ["c"; "b"; "a"]
 *)
let rev xs =
  let rec aux acc = function [] -> acc | hd :: tl -> aux (hd :: acc) tl in
  aux [] xs
