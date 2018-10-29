(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   semicond.ml                                        :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ihestin <marvin@42.fr>                     +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/06/08 14:00:40 by ihestin           #+#    #+#             *)
(*   Updated: 2018/06/08 14:00:45 by ihestin          ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

(* ******************************* Semi-conductor *************************** *)
class  boron = 
    object 
        inherit Atom.atom  
       	method name  = "Boron"
        method symbol = "B"
        method atomic_number = 5
    end

class silicon = 
    object 
        inherit Atom.atom  
       	method name  = "Silicon"
        method symbol = "Si"
        method atomic_number = 14
    end

