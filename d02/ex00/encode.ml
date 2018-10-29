(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   encode.ml                                          :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ihestin <marvin@42.fr>                     +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/05/30 09:54:26 by ihestin           #+#    #+#             *)
(*   Updated: 2018/05/30 09:54:30 by ihestin          ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)


let encode lst =
	let rec encode_rec l n comprim = match l with
		| [] -> comprim
		| a :: b :: c -> if a = b then 
								encode_rec (b :: c) (n + 1) comprim
							else
								encode_rec (b :: c) 0 (comprim @ [((n + 1), a)])
		| a :: b      ->	encode_rec [] 0 (comprim @ [((n + 1), a)])
	in 
	encode_rec lst 0 []

(* ************************************************************************** *)

let () = 
	let pr (a, b) = Printf.printf "(%d, \"%s\") " a b in
	begin 
	  let l1 = ["toto"; "toto"; "titi"] in 
	    List.iter (Printf.printf "\"%s\" ") l1; print_char '\n';
		List.iter pr (encode l1); print_char '\n';
		print_string "liste vide ";
		List.iter pr (encode []); print_char '\n'
	end;
	let pr (a, b) = Printf.printf "(%d, %d) " a b in
	begin 
		let l1 = 1 :: 1 :: -1 :: 0 :: 0 :: 0 :: [] in
	    List.iter (Printf.printf "%d ") l1; print_char '\n';
		List.iter pr (encode (l1)); print_char '\n';
	end
(* ************************************************************************** *)
