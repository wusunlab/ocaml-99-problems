(** Create a list containing all integers within a given range.

    # range 4 9;;
    - : int list = [4; 5; 6; 7; 8; 9]
    # range 9 4;;
    - : int list = [9; 8; 7; 6; 5; 4]
 *)
let range a b =
  let rec aux acc x y =
    if x = y then x :: acc
    else if x > y then aux (y :: acc) x (y + 1)
    else aux (y :: acc) x (y - 1)
  in
  aux [] a b
