(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ackermann.ml                                       :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ihestin <marvin@42.fr>                     +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/05/29 15:39:02 by ihestin           #+#    #+#             *)
(*   Updated: 2018/05/29 15:39:07 by ihestin          ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let rec ackermann m n =
	if (m < 0 || n < 0) then
	  -1
	else if m = 0 then
	  (n + 1)
	else if n = 0 then
	  ackermann (m - 1) 1
	else
	  ackermann (m - 1) (ackermann m (n - 1))

let main () = 
    print_string " ackermann (-1) 7 = "; print_int(ackermann (-1) 7); print_char '\n';
    print_string " ackermann 10 (-1) = "; print_int(ackermann 10 (-1)); print_char '\n';
    print_string " ackermann 0 0 = "; print_int(ackermann 0 0); print_char '\n';
    print_string " ackermann 2 3 = "; print_int(ackermann 2 3); print_char '\n';
    print_string " ackermann 4 1 = "; print_int(ackermann 4 1); print_char '\n'

(* ************************************************************************** *)
let () = main ()
