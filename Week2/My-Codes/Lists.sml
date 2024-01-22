(* an empty list called alpha list *)
val a = []; (* 'a list *)

val b = [1,2,3,4,5];

(* nested list *)
val c = [[3,4], [5,6,7]];

val d = [true, false, true];

(* values in the list must has the same type *)
(* val e = [true , false , 1 , 2 , 3]; *)

(* we can use expression indise the list *)
val f = [(1+2), 6 div 3, 4 mod 2, 5 , 6];

val g = [100,200,300];

(* we can add element to the list -> element adding in the first *)
val h = 400::g;

val i = 500::600::g;

(* nested list must all element in nested list too *)
(* val j = [1,2, [3,4]]; *)

(* if we want to know if the list is empty or no -> null 
   return true if the list is empty other false *)
val k = null [];
val l = null [1,2,3,4,5];

(* hd -> give you the first element in the list *)
val f = [7,8,9];
val m = hd f;  (* give 7 *)
val n = tl f;  (* give [8,9] *)
val v = hd (tl f); (* give 8 -> give first element in the tail *)

(* this way is wrong *)
(* val x = tl (hd f); *)

val y = tl (tl f); (* give [9] -> give the last element in the list *)

(* give an empty list *)
val aa = tl [9]; 

(* give true because the list is empty *)
val bb = null ( tl (tl (tl f)) );

(* we can make list of pair *)
val cc = [(1,2), (3,4)];

val xx = (5,6)::cc;
