(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   fibonacci.ml                                       :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ihestin <marvin@42.fr>                     +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/05/29 15:37:42 by ihestin           #+#    #+#             *)
(*   Updated: 2018/05/29 15:37:45 by ihestin          ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let rec fibonacci n =
	if n < 0 then
		(-1)
	else 
		fibonacci_aux n 0 1

and fibonacci_aux n acc1 acc2 =	
	if n = 0 then
		acc1
	else if n = 1 then 
		acc2
	else 
		fibonacci_aux (n - 1) acc2 (acc1 + acc2)


let main () =
	begin
	let a = (-42) in
		print_string ("fibonacci " ^ string_of_int a ^ " =  " ^ string_of_int (fibonacci a) ^ "\n")
	end;
	begin
	let a = 0 in
		print_string ("fibonacci " ^ string_of_int a ^ " =  " ^ string_of_int (fibonacci a) ^ "\n")
	end;
	begin
	let a = 1 in
		print_string ("fibonacci " ^ string_of_int a ^ " =  " ^ string_of_int (fibonacci a) ^ "\n")
	end;
	begin
	let a = 2 in
		print_string ("fibonacci " ^ string_of_int a ^ " =  " ^ string_of_int (fibonacci a) ^ "\n")
	end;
	begin
	let a = 6 in
		print_string ("fibonacci " ^ string_of_int a ^ " =  " ^ string_of_int (fibonacci a) ^ "\n")
	end
(* ************************************************************************** *)
let () = main ()


