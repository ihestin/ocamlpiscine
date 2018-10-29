(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   alkane.ml                                          :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ihestin <marvin@42.fr>                     +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/06/08 18:12:59 by ihestin           #+#    #+#             *)
(*   Updated: 2018/06/08 18:13:02 by ihestin          ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

class virtual alkane (nb:int) =
    object (self)

    	inherit Molecule.molecule 
    		(match nb with 
    			| 1 -> "Methane" | 2 -> "Ethane" | 3 -> "Propane" | 4 -> "Butane" | 5 -> "Pentane" | 6 -> "Hexane" 
    			| 7 -> "Heptane" | 8 -> "Octane" | 9 -> "Nonane" | 10 -> "Decane" | 11 -> "Undecane" | 12 -> "Dodecane" 
    			| 13 -> "Tridecane" | 14 -> "Tetradecane" | 15 -> "Pentadecane" | 16 -> "Hexadecane" | 17 -> "Heptadecane"
    			| 18 -> "Octadecane" | 19 -> "Nonadecane" | 20 -> "Eicosane" | 21 -> "Heneicosane" | 22 -> "Docosane"
    			| 23 -> "Tricosane" | 24 -> "Tetracosane" | 25 -> "Pentacosane" | 26 -> "Hexacosane" | 27 -> "Heptacosane"
    			| 28 -> "Octacosane" | 29 -> "Nonacosane" | 30 -> "Triacontane" 
    			| _ -> "SomeAlkane")
    		(let rec genlsa n acc = match n with 
    				| n when n = 0 -> (new Mendel.hydrogen)::(new Mendel.hydrogen)::acc 
    				| n when (n > 0 && n <= 30) -> genlsa (n - 1) ([new Mendel.hydrogen] @ [new Mendel.hydrogen] 
    									@ [new Mendel.carbon] @ acc) 
    				| _ -> acc
     			in  genlsa nb []
    		)    
    end

 