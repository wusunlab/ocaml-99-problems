(** Find the number of elements of a list.

    # length [ "a" ; "b" ; "c"];;
    - : int = 3
    # length [];;
    - : int = 0
 *)
let length xs =
  let rec f acc = function [] -> acc | _ :: tl -> f (acc + 1) tl in
  f 0 xs

(* note: this solution is tail-recursive *)
