(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   sequence.ml                                        :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ihestin <marvin@42.fr>                     +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/05/30 09:56:45 by ihestin           #+#    #+#             *)
(*   Updated: 2018/05/30 09:56:48 by ihestin          ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)


let sequence n =
	if n <= 0 then
	  ""
	else
	let rec conv_str l =  match l with
		| [] -> ""
		| a :: b -> (string_of_int a) ^ (conv_str b ) in
	let rec codl l n lret = match l with
		| [] -> lret
		| a :: b :: c -> if a = b then codl (b :: c) (n + 1) lret
						 else  codl (b :: c) 1 ((lret @ [n]) @ [a])
		| a :: b 	  -> codl [] 1 ((lret @ [n]) @ [a])  in
	let rec list_recn i =
		if i = 1 then [1]
		else codl (list_recn (i-1)) 1 []
    in conv_str (list_recn n)


let () = 
		print_string "debut a -1 jusqu'a 10";
		print_string (sequence (-1)); print_char '\n';
		print_string (sequence 0)   ; print_char '\n';
		print_string (sequence 1)   ; print_char '\n';
		print_string (sequence 2)   ; print_char '\n';
		print_string (sequence 3)   ; print_char '\n';
		print_string (sequence 4)   ; print_char '\n';
		print_string (sequence 5)   ; print_char '\n';
		print_string (sequence 6)   ; print_char '\n';
		print_string (sequence 7)   ; print_char '\n';
		print_string (sequence 8)   ; print_char '\n';
		print_string (sequence 9)   ; print_char '\n';
		print_string (sequence 10)  ; print_char '\n'
	    



