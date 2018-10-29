(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_countdown.ml                                    :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ihestin <marvin@42.fr>                     +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/05/28 17:24:25 by ihestin           #+#    #+#             *)
(*   Updated: 2018/05/28 17:28:09 by ihestin          ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let ft_countdown i =
	let nbr = if i <= 0 then 0 else i in
	let rec loop nb =
		print_int nb;print_char '\n';
		if nb > 0 then
		  loop (nb - 1)
	in
	loop nbr

let main () =
	begin
	let a = 3 in
		print_string ("Test with [" ^ string_of_int a ^ "]: \n");ft_countdown a;
		print_char '\n'
	end;
	begin
	let a = 0 in
		print_string ("Test with [" ^ string_of_int a ^ "]: \n");ft_countdown a;
		print_char '\n'
	end;
	begin
	let a = -5 in
		print_string ("Test with [" ^ string_of_int a ^ "]: \n");
		ft_countdown a;
		print_char '\n'
	end

(* ************************************************************************** *)
let () = main ()
