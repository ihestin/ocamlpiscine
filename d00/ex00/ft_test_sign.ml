(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_test_sign.ml                                    :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ihestin <marvin@42.fr>                     +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/05/28 12:13:31 by ihestin           #+#    #+#             *)
(*   Updated: 2018/05/28 12:13:38 by ihestin          ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let ft_test_sign nb =
	if nb >= 0
	then print_endline "positive"
	else print_endline "negative"

let main () =
	let a = 42 in
		  print_string ("Test with [" ^ string_of_int a ^ "]: "); ft_test_sign a;
	let a = 0 in
		  print_string ("Test with [" ^ string_of_int a ^ "]: "); ft_test_sign a;
	let a = -42 in
		  print_string ("Test with [" ^ string_of_int a ^ "]: "); ft_test_sign a
	

(* ************************************************************************** *)
 
 let () = main ()
