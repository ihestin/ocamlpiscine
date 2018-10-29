(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   eu_dist.ml                                         :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ihestin <marvin@42.fr>                     +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/06/04 17:48:50 by ihestin           #+#    #+#             *)
(*   Updated: 2018/06/04 17:48:53 by ihestin          ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let eu_dist a b = 
	let sizea = (Array.length a) in
		if sizea <> (Array.length b) then
			invalid_arg "arg invalide"
		else
		let rec eu_dist_acc  (acc : float) i = 
		  if i = sizea then
		  	sqrt acc
		  else
		  	eu_dist_acc (acc +. (((Array.get a i) -. (Array.get b i)) ** 2.)) (i + 1)
		in 
		eu_dist_acc 0. 0


let () =
    print_float (eu_dist [|0.0; 0.0; 0.0 |] [|1.0; 1.0; 1.0|])
 