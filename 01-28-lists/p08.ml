(** Eliminate consecutive duplicates of list elements.

    # compress ["a";"a";"a";"a";"b";"c";"c";"a";"a";"d";"e";"e";"e";"e"];;
    - : string list = ["a"; "b"; "c"; "a"; "d"; "e"]
 *)
let rec compress = function
  | x1 :: x2 :: tl ->
      if x1 = x2 then compress (x2 :: tl) else x1 :: compress (x2 :: tl)
  | small_list -> small_list
