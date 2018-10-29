(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   tak.ml                                             :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ihestin <marvin@42.fr>                     +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/05/29 15:38:26 by ihestin           #+#    #+#             *)
(*   Updated: 2018/05/29 15:38:29 by ihestin          ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let rec tak x y z =
	if y < x then
		tak (tak (x - 1) y z) (tak (y - 1) z x) (tak (z - 1) x y)
	else
		z 

let main () =
	begin
	let a = 1 and b = 2 and c = 3 in
		print_string ("Tak " ^ string_of_int a ^ " " ^ string_of_int b ^ " "^ string_of_int c  ^ " =  ");
		print_string (string_of_int (tak a b c)) ;
		print_char '\n'
	end;
	begin
	let a = 5 and b = 23 and c = 7 in
		print_string ("Tak " ^ string_of_int a ^ " " ^ string_of_int b ^ " "^ string_of_int c  ^ " =  ");
		print_string (string_of_int (tak a b c)) ;
		print_char '\n'
	end;
	begin
	let a = 9 and b = 1 and c = 0 in
		print_string ("Tak " ^ string_of_int a ^ " " ^ string_of_int b ^ " "^ string_of_int c  ^ " =  ");
		print_string (string_of_int (tak a b c)) ;
		print_char '\n'
	end;
	begin
	let a = 1 and b = 1 and c = 1 in
		print_string ("Tak " ^ string_of_int a ^ " " ^ string_of_int b ^ " "^ string_of_int c  ^ " =  ");
		print_string (string_of_int (tak a b c)) ;
		print_char '\n'
	end;
	begin
	let a = 0 and b = 42 and c = 0 in
		print_string ("Tak " ^ string_of_int a ^ " " ^ string_of_int b ^ " "^ string_of_int c  ^ " =  ");
		print_string (string_of_int (tak a b c)) ;
		print_char '\n'
	end;
	begin
	let a = 23498 and b = 98734 and c = 98776; in
		print_string ("Tak " ^ string_of_int a ^ " " ^ string_of_int b ^ " "^ string_of_int c  ^ " =  ");
		print_string (string_of_int (tak a b c)) ;
		print_char '\n'
	end


(* ************************************************************************** *)
let () = main ()

