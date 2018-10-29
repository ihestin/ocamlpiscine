(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_power.ml                                        :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ihestin <marvin@42.fr>                     +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/05/28 17:49:29 by ihestin           #+#    #+#             *)
(*   Updated: 2018/05/28 17:57:58 by ihestin          ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let rec ft_power x y =
    if x = 0
    then 0
    else 
     if y = 0
     then 1
 	 else x * (ft_power x (y-1))
    

let main () = 
    print_string " 5 exp 3 = "; print_int(ft_power 5 3); print_char '\n';
    print_string " 0 exp 3 = "; print_int(ft_power 0 3); print_char '\n';
    print_string " 5 exp 0 = "; print_int(ft_power 5 0); print_char '\n';
    print_string " 2 exp 3 = "; print_int(ft_power 2 3); print_char '\n'


(* ************************************************************************** *)
let () = main ()
