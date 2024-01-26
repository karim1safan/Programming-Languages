(* an empty list called alpha list *)
val a = []; (* 'a list *)

val b = [1,2,3,4,5];

(* nested list *)
val c = [[3,4], [5,6,7]];

val d = [true, false, true];

(* values in the list must have the same type *)
(* val e = [true, false, 1, 2, 3]; *)

(* we can use expression inside the list *)
val f = [(1+2), 6 div 3, 4 mod 2, 5 , 6];

val g = [100,200,300];

(* we can add element to the list -> element adding in the first *)
val h = 400::g;

val i = 500::600::g;

(* nested list must all elements in the nested list too *)
(* val j = [1,2, [3,4]]; *)

(* if we want to know if the list is empty or not -> null 
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

(* we can make a list of pairs *)
val cc = [(1,2), (3,4)];

val xx = (5,6)::cc;


(* List Functions *)
fun sum_list(xs : int list) =
    if null xs then 0 else hd xs + sum_list(tl xs);

val sum_element_in_lst = sum_list[1,2,3,4,5];

fun product_list(xs : int list) =
    if null xs then 1 else hd xs * product_list(tl xs);

val product_element_in_lst = product_list[1,2,3];

fun count_down(x : int) =           (* [7,6,5,4,3,2,1] *)
    if x = 0 then [] else x :: count_down(x-1);
	
val count_element = count_down 7;

val sum_count = sum_list(count_down 7);

fun append(xs : int list, ys : int list) =
    if null xs then ys else (hd xs) :: append((tl xs), ys);

val two_lst = append([1,2,3], [4,5,6]);

(* (int list) * (int list) -> int list *)


(* functions over pairs of lists *)
fun sum_pair_list(xs : (int * int) list) =
    if null xs then 0 else #1 (hd xs) + #2 (hd xs) + sum_pair_list(tl xs);

val sum_two_pairs = sum_pair_list[(3,4),(5,6)];

(* sum_pair_list [(3,4),(5,6)] *)


fun produce_pair_list (x : (int * int) list) =  (* [(1,2),(3,4)] -> 1*2*3*4 = 24 *)
    if null x
    then 1
    else #1 (hd x) * #2 (hd x) * produce_pair_list(tl x)
    
val bb = produce_pair_list[(1,2),(3,4)];

fun first_element(xs : (int * int) list) =        (* [(3,4),(5,6) -> [3,5] *)
    if null xs then [] else (#1 (hd xs)) :: first_element(tl xs); 

 val firsts = first_element[(3,4),(5,6)];			     
			    
 fun second_element(xs : (int * int) list) =
     if null xs then [] else (#2 (hd xs)) :: second_element(tl xs);
 val seconds = second_element[(3,4),(5,6)];

 fun sum_pair_list2(xs : (int * int) list) =
     (sum_list (first_element xs)) + (sum_list (second_element xs))

 val sum_pairs = sum_pair_list2[(1,2),(3,4)];					
