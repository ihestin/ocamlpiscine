(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   micronap.ml                                        :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ihestin <marvin@42.fr>                     +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/06/04 09:01:06 by ihestin           #+#    #+#             *)
(*   Updated: 2018/06/04 09:01:13 by ihestin          ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let my_sleep () = Unix.sleep 1

let () =
    if Array.length Sys.argv > 1 then
        let n = try int_of_string (Array.get Sys.argv 1) with Failure(_) -> 0
    	in 
        	for i  = 1 to n do
            	my_sleep ()
        	done
