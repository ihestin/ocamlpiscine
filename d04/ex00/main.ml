(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ihestin <marvin@42.fr>                     +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/06/02 08:41:41 by ihestin           #+#    #+#             *)
(*   Updated: 2018/06/02 08:41:48 by ihestin          ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let main () = 
	let col = Color.all in
	let rec print_list col = match col with
		| [] -> ()
		| a::b -> Printf.printf "Color name: %s (abr.: %s) \n" (Color.toStringVerbose a) (Color.toString a);
				  print_list b
	in print_list col

let () = 
    main ()

