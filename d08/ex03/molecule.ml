(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   molecule.ml                                        :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ihestin <marvin@42.fr>                     +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/06/08 14:40:47 by ihestin           #+#    #+#             *)
(*   Updated: 2018/06/08 14:41:05 by ihestin          ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

class virtual molecule (name:string) (lst:Atom.atom list) =
	object (self)

		method genFormula lst :string =
		   if lst = [] then 
		   		""
		   	else 
		   	let rec syml (la:Atom.atom list) (ls:string list) = match la with
		   		| [] -> ls
		   		| a::b -> syml b ((a#symbol)::ls)
		   	in
		   	let rec encode (ls:string list) n (result:string) = match ls with
		   		| [] -> result
		   		| a::b::c -> if a = b then 
								encode (b :: c) (n + 1) result
							else
								if n = 0 then
									encode (b :: c) 0 (result ^ a)
								else
									encode (b :: c) 0 (result ^ a ^ (string_of_int (n + 1)))
				| a::b -> 	if n = 0 then
								result ^ a 
							else
								result ^ a ^ (string_of_int (n + 1))
			in 
			encode (List.sort (fun x y -> if x < y then - 1 else if x = y then 0 else 1) (syml lst [])) 0 ""

		method name = name
		method formula = self#genFormula lst

		method to_string = "Name of molecule : " ^ self#name ^ " with formula: " ^ self#formula

		method equals ( oth:molecule ) = 
            (oth#formula = self#formula)
	end 

