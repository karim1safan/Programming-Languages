(*
 NOTE: if the function has one argument we can call it without use parentheses
       if there are more than one argument we must use parentheses
*)


(* works only if y >= 0 *)
fun pow(x : int, y : int) =
    if y = 0
    then 1
    else x * pow(x, y-1)    (* int * int -> int *)
		
fun cube(x : int) =
    (* x * x * x *)
    pow(x, 3)
       
fun fact(x : int) =
    if x = 0
    then 1
    else x * fact(x-1)

fun sqr(x : int) =
    x * x;

fun abs(x : int) =
    if x > 0
    then x
    else ~x



	     
val sixtyfour = cube 4;

val fortytwo = pow(2,2+2) + pow(4,2) + cube(2) + 2;

val six = fact 3;

val four = sqr 2;

val positiveFive = abs ~5;



