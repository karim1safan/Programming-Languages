
(* int * bool -> bool * int *)
fun swap (pr : int*bool) =
    (#2 pr, #1 pr)

(* (int * int) + (int * int) -> int *)
fun sum_two_pairs (pr1 : int*int, pr2 : int*int) =
    (#1 pr1) + (#2 pr1) + (#1 pr2) + (#2 pr2)

(* int * int -> int * int *)
fun div_mod (x : int, y : int) =
    (x div y, x mod y)

(* int * int -> int *)	
fun sort_pair (pr : int * int) =
    if (#1 pr) < (#2 pr)
    then pr
    else (#2 pr, #1 pr)	     

(* int * int -> int *)	    
fun square (pr : int * int) =
    (#1 pr) * (#2 pr)
	   
val swap_two_val = swap(7, true);

val x = (1,2);
val y = (3,4);

val sum_two_val = sum_two_pairs( x , y );

val div_mod_two_val = div_mod(4, 2);

val x = (3, 4);

val sort_two_val = sort_pair x;

val a = (7, (true, 9));            (* int * (bool * int) *)
val b = #1 (#2 a);                 (* bool *)
val c = (#2  a);                   (* bool * int *)
val d = ((3,5), ((4,8), (0,0)));   (* (int*int), ((int*int), (int*int)) *)

(* Pairs and Tuples can be nested *)

