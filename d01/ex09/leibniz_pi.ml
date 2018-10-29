(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   leibniz_pi.ml                                      :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ihestin <marvin@42.fr>                     +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/05/29 17:51:21 by ihestin           #+#    #+#             *)
(*   Updated: 2018/05/29 17:51:24 by ihestin          ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let leibniz_pi delta =
	if delta <= 0. then
		-1
	else
    let deltam = -1. *. delta in
	let refpi = 4. *. (atan 1.) in
	let formul_member i =
	   4. /. (2. *. (float_of_int i) +. 1.) in
	let rec leibniz_pi_aux n acc sign =
		if  (deltam <= (acc -. refpi)) && ((acc -. refpi) <= delta) then
			n
		else
		  leibniz_pi_aux (n + 1) (acc +. (sign *. (formul_member n) )) (-1. *. sign)
	in leibniz_pi_aux 0 0. 1.

let main () =
begin
  let a = (-42.) in
  print_string ("leibniz_pi (" ^ string_of_float a ^ ") =  " ^ string_of_int (leibniz_pi a) ^ "\n")
end;
begin
  let a = 4. in
  print_string ("leibniz_pi (" ^ string_of_float a ^ ") =  " ^ string_of_int (leibniz_pi a) ^ "\n")
end;
begin
  let a = 1. in
  print_string ("leibniz_pi (" ^ string_of_float a ^ ") =  " ^ string_of_int (leibniz_pi a) ^ "\n")
end;
begin
  let a = 0.1 in
  print_string ("leibniz_pi (" ^ string_of_float a ^ ") =  " ^ string_of_int (leibniz_pi a) ^ "\n")
end;
begin
  let a = 0.01 in
  print_string ("leibniz_pi (" ^ string_of_float a ^ ") =  " ^ string_of_int (leibniz_pi a) ^ "\n")
end;
begin
  let a = 0.001 in
  print_string ("leibniz_pi (" ^ string_of_float a ^ ") =  " ^ string_of_int (leibniz_pi a) ^ "\n")
end;
begin
  let a = 0.0001 in
  print_string ("leibniz_pi (" ^ string_of_float a ^ ") =  " ^ string_of_int (leibniz_pi a) ^ "\n")
end;
begin
  let a = (1e-05) in
  print_string ("leibniz_pi (" ^ string_of_float a ^ ") =  " ^ string_of_int (leibniz_pi a) ^ "\n")
end;
begin
  let a = (1e-06) in
  print_string ("leibniz_pi (" ^ string_of_float a ^ ") =  " ^ string_of_int (leibniz_pi a) ^ "\n")
end;
begin
  let a = (1e-07) in
  print_string ("leibniz_pi (" ^ string_of_float a ^ ") =  " ^ string_of_int (leibniz_pi a) ^ "\n")
end

(* ************************************************************************** *)
let () = main ()
