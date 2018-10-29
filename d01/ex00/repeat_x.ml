(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   repeat_x.ml                                        :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ihestin <marvin@42.fr>                     +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/05/29 14:11:04 by ihestin           #+#    #+#             *)
(*   Updated: 2018/05/29 14:11:07 by ihestin          ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)


let rec repeat_x n =
  if n < 0 then
    "Error"
  else if n = 0 then
    ""
  else 
    "x" ^ repeat_x (n - 1)

let main () =
	begin
	let a = 0 in
		print_string ("Test with [" ^ string_of_int a ^ "]: \n");print_string (repeat_x a) ;
		print_char '\n'
	end;
	begin
	let a = -3 in
		print_string ("Test with [" ^ string_of_int a ^ "]: \n");print_string (repeat_x a) ;
		print_char '\n'
	end;
	begin
	let a = 1 in
		print_string ("Test with [" ^ string_of_int a ^ "]: \n");print_string (repeat_x a) ;
		print_char '\n'
	end;
	begin
	let a = 5 in
		print_string ("Test with [" ^ string_of_int a ^ "]: \n");print_string (repeat_x a) ;
		print_char '\n'
	end


(* ************************************************************************** *)
let () = main ()