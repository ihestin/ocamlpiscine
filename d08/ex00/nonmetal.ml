(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   nonmetal.ml                                        :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ihestin <marvin@42.fr>                     +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/06/08 14:00:54 by ihestin           #+#    #+#             *)
(*   Updated: 2018/06/08 14:00:59 by ihestin          ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

(* ********************************* Non-Metals ***************************** *)
class hydrogen = 
    object 
        inherit Atom.atom 
       	method name  = "Hydrogen"
        method symbol = "H"
        method atomic_number = 1
    end

class carbon = 
    object 
        inherit Atom.atom  
       	method name  = "Carbon"
        method symbol = "C"
        method atomic_number = 6
    end

class nitrogen = 
    object 
        inherit Atom.atom  
       	method name  = "Nitrogen"
        method symbol = "N"
        method atomic_number = 7
    end

class oxygen = 
    object 
        inherit Atom.atom  
       	method name  = "Oxygen"
        method symbol = "O"
        method atomic_number = 8
    end

class fluorine = 
    object 
        inherit Atom.atom  
       	method name  = "Fluorine"
        method symbol = "F"
        method atomic_number = 9
    end

class phosphorus = 
    object 
        inherit Atom.atom  
       	method name  = "Phosphorus"
        method symbol = "P"
        method atomic_number = 15
    end

class sulfur = 
    object 
        inherit Atom.atom  
       	method name  = "Sulfur"
        method symbol = "S"
        method atomic_number = 16
    end

class chlorine = 
    object 
        inherit Atom.atom  
       	method name  = "Chlorine"
        method symbol = "Cl"
        method atomic_number = 17
    end

