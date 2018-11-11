(** Find out whether a list is a palindrome. HINT: a palindrome is its own
    reverse.

    # is_palindrome [ "x" ; "a" ; "m" ; "a" ; "x" ];;
    - : bool = true
    # not (is_palindrome [ "a" ; "b" ]);;
    - : bool = true
 *)
let is_palindrome xs = xs = List.rev xs
