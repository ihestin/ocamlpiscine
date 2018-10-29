(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   converges.ml                                       :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ihestin <marvin@42.fr>                     +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/05/29 17:52:52 by ihestin           #+#    #+#             *)
(*   Updated: 2018/05/29 17:52:54 by ihestin          ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let rec converges f x n =
	if n < 0 then
		false
	else if n = 0 then
		f x == x
	else
		converges f  (f x) (n - 1)

let main () =
	print_string     "converges (( * ) 2) 2 5 = ";
	print_string (if (converges (( * ) 2) 2 5) then "True\n" else "false\n");

	print_string     "converges (( * ) 2) 0 0 = ";
	print_string (if (converges (( * ) 2) 0 0) then "True\n" else "false\n");

	print_string     "converges (fun x -> x / 2) 2 2 = ";
	print_string (if (converges (fun x -> x / 2) 2 2) then "True\n" else "false\n");

	print_string     "converges (fun x -> x / 2) 2 1 = ";
	print_string (if (converges (fun x -> x / 2) 2 1) then "True\n" else "false\n");

	print_string     "converges (fun x -> x / 2) 0 5 = ";
	print_string (if (converges (fun x -> x / 2) 0 5) then "True\n" else "false\n");

	print_string     "converges (fun x -> x * x) 1 5 = ";
	print_string (if (converges (fun x -> x * x) 1 5) then "True\n" else "false\n")

	(* ************************************************************************** *)
	let () = main ()
