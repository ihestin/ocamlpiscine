(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   gray.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ihestin <marvin@42.fr>                     +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/05/30 09:56:02 by ihestin           #+#    #+#             *)
(*   Updated: 2018/05/30 09:56:05 by ihestin          ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)


let gray n =
	if n > 0 then
	let rec print_lst sl = match sl with
	| [] -> print_char '\n'
	| a :: b -> print_string a; print_char ' '; print_lst b in
	let rec revlist acc = function
	| [] -> acc
	| a :: b -> revlist (a :: acc) b in
	let rec prefixe s l = match l with
	| [] -> []
	| a::b -> (s ^ a) :: prefixe s b in
	let rec concat l1 l2 = match l1 with 
	| [] -> l2
	| a :: b -> a :: concat b l2 in
	let rec gray_rec i =
	   if i = 1 then
	   	["0"; "1"]
	   else
	   let g = gray_rec (i - 1) in
	   concat (prefixe "0" g) (prefixe "1" (revlist [] g))
	in 
	print_lst (gray_rec n)


(* ************************************************************************** *)
let () = 
  print_string "gray 0 : ";
  gray 0;
  print_string "\ngray 1 : ";
  gray 1;
  print_string "gray 2 : ";
  gray 2;
  print_string "gray 3 : ";
  gray 3;
  print_string "gray 4 : \n";
  gray 4;
  print_string "gray 5 : \n";
  gray 5

(* ************************************************************************** *)

