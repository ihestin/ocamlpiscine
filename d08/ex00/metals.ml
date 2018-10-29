(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   metals.ml                                          :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ihestin <marvin@42.fr>                     +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/06/08 14:00:21 by ihestin           #+#    #+#             *)
(*   Updated: 2018/06/08 14:00:30 by ihestin          ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

(* ******************************** Metals ********************************** *)

class  lithium = 
    object 
        inherit Atom.atom  
       	method name  = "Lithium"
        method symbol = "Li"
        method atomic_number = 3
    end

class beryllium = 
    object 
        inherit Atom.atom  
       	method name  = "Beryllium"
        method symbol = "Be"
        method atomic_number = 4
    end
    
class sodium = 
    object 
        inherit Atom.atom  
       	method name  = "Sodium"
        method symbol = "Na"
        method atomic_number = 11
    end

class magnesium = 
    object 
        inherit Atom.atom  
       	method name  = "Magnesium"
        method symbol = "Mg"
        method atomic_number = 12
    end

class aluminum = 
    object 
        inherit Atom.atom  
       	method name  = "Aluminum"
        method symbol = "Al"
        method atomic_number = 13
    end
