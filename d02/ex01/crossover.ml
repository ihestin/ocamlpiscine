(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   crossover.ml                                       :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ihestin <marvin@42.fr>                     +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/05/30 09:55:12 by ihestin           #+#    #+#             *)
(*   Updated: 2018/05/30 09:55:17 by ihestin          ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let crossover lst1 lst2 = 
	let rec is_in elt l = match l with
		| [] -> false
		| a::b -> if (elt = a) then true else is_in elt b
	in 
	let rec crossover_aux l1 l2 lcom = match l1 with
		| [] -> lcom
		| a::b -> if (not (is_in a lcom)) && (is_in a l2) then 
					crossover_aux b l2 (a :: lcom)
				  else 
					crossover_aux b l2 lcom
	in
	 crossover_aux lst1 lst2 []
			
(* ************************************************************************** *)


let () = 
	let l1 = ["toto"; "to"; "titi";"aaa";"toto";"titi";"aaa"] in 
	let l2 = ["toto"; "tutu";"titititi"] in
	let l3 = [] in
		print_string "CHAINE  : \n";
		print_string "liste 1 : \n";
	    List.iter (Printf.printf "\"%s\" ") l1; print_char '\n';
		print_string "Resultat avec liste vide  : \n";
	    List.iter (Printf.printf "\"%s\" ") (crossover l1 l3); print_char '\n';
		print_string "liste 2 : \n";
	    List.iter (Printf.printf "\"%s\" ") l2; print_char '\n';
		print_string "Resultat l1 avec l2 : \n";
	    List.iter (Printf.printf "\"%s\" ") (crossover l1 l2); print_char '\n';
		print_string "Resultat l1 avec l1 : \n";
	    List.iter (Printf.printf "\"%s\" ") (crossover l1 l1); print_char '\n'

let () = 
	let l1 = [-1; 10; 3; 3; 4; 0; 2] in 
	let l2 = [3; 3; 3; 4; 2; -1] in
	let l3 = [1; 2; 3] in
		print_string "\n ENTIER  : \n";
		print_string "liste 1 : \n";
	    List.iter (Printf.printf "%d ") l1; print_char '\n';
		print_string "liste 2 : \n";
	    List.iter (Printf.printf "%d ") l2; print_char '\n';
		print_string "Resultat l1 avec l2 : \n";
	    List.iter (Printf.printf  "%d ") (crossover l1 l2); print_char '\n';
		print_string "liste 3 : \n";
	    List.iter (Printf.printf "%d ") l3; print_char '\n';
		print_string "Resultat l1 avec l3 : \n";
	    List.iter (Printf.printf  "%d ") (crossover l1 l3); print_char '\n';
		print_string "Resultat l1 avec l1 : \n";
	    List.iter (Printf.printf  "%d ") (crossover l1 l1); print_char '\n'


	