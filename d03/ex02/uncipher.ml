(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   uncipher.ml                                        :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ihestin <marvin@42.fr>                     +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/06/01 20:18:33 by ihestin           #+#    #+#             *)
(*   Updated: 2018/06/01 20:18:43 by ihestin          ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)


let unrot_1c c =
	if (c > 'a' && c <= 'z') || (c > 'A' && c <= 'Z') then
	  char_of_int ((int_of_char c) - 1)
	else 
	  if (c = 'a') then 'z' else if (c = 'A') then 'Z' else c

let unrot42 s = 
	let rec lop n s =
		if n <= 0 then s
		else lop (n - 1)  (String.map unrot_1c s)
	in lop 42 s


let uncaesar s n = 
	let rec lop n s =
		if n <= 0 then s
		else lop (n - 1)  (String.map unrot_1c s)
	in lop n s

let xor  s key =
let keyi = key mod 255 in
	let xor_c c = (char_of_int ((int_of_char c) lxor  keyi)) in
       (String.map xor_c s)

(* let transcrypt f = match f with
	| Cipher.caesar -> uncaesar
	| _ ->  xor
*)

let ft_uncrypt s cryt_l =
let key = 42 in
let rec crypt s l = match l with
| [] -> s
| a::b -> crypt ( a s key) b
in crypt s cryt_l
