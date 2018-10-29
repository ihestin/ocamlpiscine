(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   atom.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ihestin <marvin@42.fr>                     +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/06/08 09:58:59 by ihestin           #+#    #+#             *)
(*   Updated: 2018/06/08 09:59:15 by ihestin          ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

class virtual atom   =
    object(self)
        method virtual name:string
        method virtual symbol:string
        method virtual atomic_number:int
        method to_string = "Atom: Name " ^ self#name ^ ", symbol " ^ self#symbol ^ ", Atomic number " ^ (string_of_int self#atomic_number)
        method equals (oth:atom) = self#atomic_number = oth#atomic_number
    end

