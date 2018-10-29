(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   iter.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ihestin <marvin@42.fr>                     +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/05/29 17:53:43 by ihestin           #+#    #+#             *)
(*   Updated: 2018/05/29 17:54:13 by ihestin          ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let rec iter f x n =
	if n < 0 then
		-1
	else if n = 0 then
		x
	else
		iter f  (f x) (n - 1)


let main () =
	print_string "iter (fun x -> x * x) 2 4 = ";
		print_int(iter (fun x -> x * x) 2 4); print_char '\n';

	print_string "iter (fun x -> x * x) 2 (-1)) = ";
		print_int(iter (fun x -> x * x) 2 (-1)); print_char '\n';

	print_string "iter (fun x -> 2 * x) 2 4 = ";
		print_int(iter (fun x -> 2 * x) 2 4); print_char '\n';

	print_string "iter (fun x -> 3 * x) 5 0 = ";
		print_int(iter (fun x -> 3 * x) 5 0); print_char '\n';

	print_string "iter (fun x -> x * x) 5 0 = ";
		print_int(iter (fun x -> x * x) 5 0); print_char '\n'

(* ************************************************************************** *)
let () = main ()
