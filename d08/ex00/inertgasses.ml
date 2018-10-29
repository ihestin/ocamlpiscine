(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   inertgasses.ml                                     :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ihestin <marvin@42.fr>                     +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/06/08 14:01:06 by ihestin           #+#    #+#             *)
(*   Updated: 2018/06/08 14:01:17 by ihestin          ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

(* ******************************** Inert gasses **************************** *)

class helium = 
    object 
        inherit Atom.atom  
       	method name  = "Helium"
        method symbol = "He"
        method atomic_number = 2
    end

class neon = 
    object 
        inherit Atom.atom  
       	method name  = "Neon"
        method symbol = "Ne"
        method atomic_number = 10
    end
    
class argon = 
    object 
        inherit Atom.atom  
       	method name  = "Argon"
        method symbol = "Ar"
        method atomic_number = 18
    end


