(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   hofstadter_mf.ml                                   :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ihestin <marvin@42.fr>                     +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/05/29 17:54:34 by ihestin           #+#    #+#             *)
(*   Updated: 2018/05/29 17:54:36 by ihestin          ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let rec hfs_f n =
	if n < 0 then
		-1
	else if n = 0 then
		1
	else
		n - hfs_m (hfs_f (n - 1))

and hfs_m n =
	if n < 0 then
		-1
	else if n = 0 then
		0
	else
		n - hfs_f (hfs_m (n - 1))

let main () =
begin
 let a = -5  in
 print_string ("hfs_f (" ^ string_of_int a ^ ") = " ^ string_of_int (hfs_f a) ^ " \n");
 print_string ("hfs_m (" ^ string_of_int a ^ ") = " ^ string_of_int (hfs_m a) ^ " \n\n");
end;
begin
 let a = 0  in
 print_string ("hfs_f (" ^ string_of_int a ^ ") = " ^ string_of_int (hfs_f a) ^ " \n");
 print_string ("hfs_m (" ^ string_of_int a ^ ") = " ^ string_of_int (hfs_m a) ^ " \n\n");
end;
begin
 let a = 1  in
 print_string ("hfs_f (" ^ string_of_int a ^ ") = " ^ string_of_int (hfs_f a) ^ " \n");
 print_string ("hfs_m (" ^ string_of_int a ^ ") = " ^ string_of_int (hfs_m a) ^ " \n\n");
end;
begin
 let a = 4  in
 print_string ("hfs_f (" ^ string_of_int a ^ ") = " ^ string_of_int (hfs_f a) ^ " \n");
 print_string ("hfs_m (" ^ string_of_int a ^ ") = " ^ string_of_int (hfs_m a) ^ " \n\n");
end

(* ************************************************************************** *)
let () = main ()
