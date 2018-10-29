(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   dalek.ml                                           :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ihestin <marvin@42.fr>                     +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/06/07 12:47:37 by ihestin           #+#    #+#             *)
(*   Updated: 2018/06/07 12:47:47 by ihestin          ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

 class dalek =
    object
        val _name = Random.self_init () ; "Dalek" ^ (String.make 1 (char_of_int((Random.int 26) + 65))) 
        					^ (String.make 1 (char_of_int((Random.int 26) + 97))) 
        					^ (String.make 1 (char_of_int((Random.int 11) + 97)))
        val mutable _hp   = 100
        val mutable _shield = true
        
        method to_string = _name ^ " hp : " ^ (string_of_int _hp) ^ " shield : " ^ (string_of_bool _shield)
        method talk = let rand = (Random.int 4) in 
        	match rand with
        	| 0 -> print_endline "Explain! Explain!"
        	| 1 -> print_endline "Exterminate! Exterminate!"
        	| 2 -> print_endline "I obey!"
        	| _ -> print_endline "You are the Doctor! You are the enemy of the Daleks!"

        method exterminate (p:People.people) = p#die; _shield <- not _shield 
        method die = print_endline "Emergency Temporal Shift!"   

        initializer Random.self_init ()
    end

