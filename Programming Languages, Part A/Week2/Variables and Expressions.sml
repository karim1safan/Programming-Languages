(* Video 01 --> Variables and Exressions *)

(* This is a comment. this is the first program. *)

val x = 34;
(* static environment: x : int *)
(* dynamic environment: x --> 34 *)

val y = 17;
(* static environment: x : int, y : int *)
(* dynamic environment: x --> 34, y --> 17 *)

val z = (x + y) + (y + 2);
(* static environment: x: int, y: int, z: int *)
(* dynamic environment: x --> 34, y --> 17, z --> 70 *)

val q = z + 1;
(* static environment: x: int, y: int, z: int, q: int *)
(* dynamic environment: x --> 34, y --> 17, z --> 70, q --> 71*)

val abs_of_z = if z < 0 then 0 - z else z; (* bool *) (* int *)
(* static environment : abs_of_z : int *)
(* dynamic environment : x --> 34, y --> 17, z --> 70, abs_of_z --> 70 *)

val abs_of_z_simpler = abs z; (* we can wirte it abs(z) *)

val test = 12 + (if 28 > 56 then 18 else 11);
(* static environment: int *)
(* dynamic environment: 23 *)





(* Vide 02 --> Rules for expressions *)

(*

Syntax:
   if e1 then e2 else e3
   where if, then, and else are words and
   e1, e2 and e3 are subexpressions

Type-checking:
   first e1 must have type bool 
   e2 and e3 can have any type (let's call it t), but they
   must have the same type of t
   the type of the entire expression is also t

Evaluation-rules:
   first, evaluate e1 to a value and call it v1
   if it's true evaluate e2 and that result is the whole expression's result
   else, evaluate e3, and that results in the whole expression's result 
 
*)
   
  



(* Video 03 --> Errors *)

(* This program has several errors in it so we can debug them. *)

val x = 34
	    
val y = x + 1                                (* Forget val keyword *)

val z = if y > 0 then false else x < 4	     (* The expression after if must be a bool and then *)
  
val q = if y > 0 then 0 else 42
				 
val a = ~5                                   (* we use - as binary operator *)
	      
val w = 0

val funny = 34                               (* not use fun as a variable name *)

val v = x div (w + 1)                        (* we can use div for division not / and we can't div by 0*)                            		



		  
(* Video --> Shadowing *)

val a = 10;

(* a : int 
   a -> 10 *)

val b = a * 2;

(* a : int, b : int
   a -> 10, b -> 20 *)

val a = 5;   (* This is not an assignment statement *)

(* a : int, b : int 
   a -> 5, b -> 20 *)
    
val c = b;

(* a : int, b : int, c : int
   a -> 5, b -> 20, c -> 20 *)

val d = a;   (* d is bound to 5 *)

(* a : int, b : int, c : int, d : int 
   a -> 5, b -> 20, c -> 20, d -> 5 *)
		  
val a = a + 1;

(* a : int, b : int, c : int, d : int 
   a -> 6, b -> 20, c -> 20, d -> 5 *)

(* val g = f - 3; *)     (* doesn't type-check *)

val f = a * 2;

(* a : int, b : int, c : int, d : int, f : int  
   a -> 6, b -> 20, c -> 20, d -> 5, f -> 12 *)




(*

val x = 12
x : int 
x -> 12

val n = 2 + x
x : int, n : int 
x -> 12, n -> 14

val x = x - 14  
x : int, n : int
x -> ~2, n -> 14

val n = n * x
x : int, n : int
x -> ~2, n -> ~28

*)
