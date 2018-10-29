(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ihestin <marvin@42.fr>                     +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/06/02 11:34:21 by ihestin           #+#    #+#             *)
(*   Updated: 2018/06/02 11:34:27 by ihestin          ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let main () = 
	let cardl = Value.all in
	let rec print_list cardl = match cardl with
		| [] -> ()
		| a::b -> Printf.printf "Card name: %s (abr.: %s) \n" (Value.toStringVerbose a) (Value.toString a);
				  print_list b
	in print_list cardl;

	let print_val (card : Value.t) =
	  Printf.printf "Card name: %s: \n   Previous card % s\n   Next card % s\n" (Value.toStringVerbose card) 
	  						(try (Value.toString (Value.previous card)) with Invalid_argument(_) -> "no previous card ")
	  						(try (Value.toString (Value.next card)) with Invalid_argument(_) -> "no next card ")
	in
	let cardl = Value.all in
	let rec print_list cardl = match cardl with
		| [] -> ()
		| a::b -> print_val a;
				  print_list b
	in print_list cardl


let () = 
    main ()

