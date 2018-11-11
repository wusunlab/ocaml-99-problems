(** Pack consecutive duplicates of list elements into sublists.

    # pack ["a";"a";"a";"a";"b";"c";"c";"a";"a";"d";"d";"e";"e";"e";"e"];;
    - : string list list =
    [["a"; "a"; "a"; "a"]; ["b"]; ["c"; "c"]; ["a"; "a"]; ["d"; "d"];
     ["e"; "e"; "e"; "e"]]
 *)
let pack xs =
  let rec aux acc current = function
    | [] -> acc
    | [x] -> (x :: current) :: acc
    | x1 :: (x2 :: _ as tl) ->
        if x1 = x2 then aux acc (x1 :: current) tl
        else aux ((x1 :: current) :: acc) [] tl
  in
  List.rev (aux [] [] xs)

(* note: since List.rev has an O(n) time complexity, it is better to apply it
   to a list with fewer elements, which means `aux [] [] (List.rev xs)` is
   sub-optimal. *)
