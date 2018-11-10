(** Find the k'th element of a list.

    # at 3 [ "a" ; "b"; "c"; "d"; "e" ];;
    - : string option = Some "c"
    # at 3 [ "a" ];;
    - : string option = None
 *)
let rec at k = function
  | [] -> None
  | x :: tl -> if k = 1 then Some x else at (k - 1) tl

(* note: tail can be empty *)
