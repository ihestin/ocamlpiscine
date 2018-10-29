(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   people.ml                                          :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ihestin <marvin@42.fr>                     +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/06/06 19:31:17 by ihestin           #+#    #+#             *)
(*   Updated: 2018/06/06 19:31:21 by ihestin          ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

class people (name:string) =
    object
        val _name = name
        val mutable _hp   = 100
        
        method to_string = "Objet :"^ _name ^ " with _hp = " ^ (string_of_int _hp)
        method talk = print_endline ("I’m " ^ _name ^ "! Do you know the Doctor?")
        method die = print_endline "Aaaarghh"
        initializer print_endline "Hello I am here"
    end

