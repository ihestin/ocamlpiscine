(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_sum.ml                                          :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ihestin <marvin@42.fr>                     +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/05/29 17:52:07 by ihestin           #+#    #+#             *)
(*   Updated: 2018/05/29 17:52:12 by ihestin          ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let rec ft_sum f l u =
    if l > u then
    	nan
    else
    	ft_sum_acc f l u 0.

and ft_sum_acc f l u acc =
	if l > u then
		acc
	else
	   ft_sum_acc f (l + 1) u (acc +. (f l))

let main () =
   print_string "ft_sum (fun i -> float_of_int (i * i)) 1 10 = ";
   	print_float (ft_sum (fun i -> float_of_int (i * i)) 1 10); print_char '\n';

   print_string "ft_sum (fun i -> float_of_int (i * i)) 2 9 = ";
    print_float (ft_sum (fun i -> float_of_int (i * i)) 2 9); print_char '\n';

   print_string "ft_sum (fun i -> float_of_int (i * i)) 11 10 = ";
    print_float (ft_sum (fun i -> float_of_int (i * i)) 11 10); print_char '\n';

   print_string "ft_sum (fun i -> float_of_int (i)) 1 10 = ";
    print_float (ft_sum (fun i -> float_of_int (i)) 1 10); print_char '\n';

   print_string "ft_sum (fun i -> float_of_int (i)) (-1) 10 = ";
    print_float (ft_sum (fun i -> float_of_int (i)) (-1) 10); print_char '\n';

   print_string "ft_sum (fun i -> float_of_int (i)) (-10) 10 = ";
    print_float (ft_sum (fun i -> float_of_int (i)) (-10) 10); print_char '\n'

(* ************************************************************************** *)
	let () = main ()
