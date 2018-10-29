(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   repeat_string.ml                                   :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ihestin <marvin@42.fr>                     +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/05/29 15:40:53 by ihestin           #+#    #+#             *)
(*   Updated: 2018/05/29 15:40:56 by ihestin          ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let rec repeat_string ?(str = "x") n =
    if n < 0 then
        "Error"
    else if n = 0 then
        ""
    else
       str ^ repeat_string ~str:str (n - 1)

let main () =
	begin
	let a = 0 in
		print_string ("Test with str default et n = " ^ string_of_int a ^ ": \n");print_string (repeat_string  a) ;
		print_char '\n'
	end;
	begin
	let a = 3 in
		print_string ("Test with str default et n = " ^ string_of_int a ^ ": \n");print_string (repeat_string  a) ;
		print_char '\n'
	end;
	begin
	let a = (-1) in
		print_string ("Test with str default et n = " ^ string_of_int a ^ ": \n");print_string (repeat_string  a) ;
		print_char '\n'
	end;
	print_char '\n';
	begin
	let s = "what" and a = 0 in
		print_string ("Test with str = [" ^ s ^ "] et n = " ^ string_of_int a ^ ": \n");
		print_string (repeat_string ~str:s a) ;
		print_char '\n'
	end;
	begin
	let s = "wh" and a = 1 in
		print_string ("Test with str = [" ^ s ^ "] et n = " ^ string_of_int a ^ ": \n");
		print_string (repeat_string ~str:s a) ;
		print_char '\n'
	end;
	begin
	let s = "what" and a = 3 in
		print_string ("Test with str = [" ^ s ^ "] et n = " ^ string_of_int a ^ ": \n");
		print_string (repeat_string ~str:s a) ;
		print_char '\n'
	end;
	begin
	let s = "what" and a = -1 in
		print_string ("Test with str = [" ^ s ^ "] et n = " ^ string_of_int a ^ ": \n");
		print_string (repeat_string ~str:s a) ;
		print_char '\n'
	end

(* ************************************************************************** *)
let () = main ()