(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   jokes.ml                                           :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ihestin <marvin@42.fr>                     +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/06/04 11:02:07 by ihestin           #+#    #+#             *)
(*   Updated: 2018/06/04 11:02:13 by ihestin          ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let () = 
  let (ljokes : string list) = 
  ( "Coucher avec un vieux, quelle horreur ! Mais avec un jeune, quel travail (Alice Sapritch )"
  ::"L'homme n'est pas fait pour travailler, la preuve c'est que cela le fatigue. (VOLTAIRE)"
  ::"Le travail d'équipe est essentiel. En cas d'erreur, ça permet d'accuser quelqu'un d'autre."
  ::("Si ton labeur est dur, et si tes résultats sont minces,\n " ^ 
  							" rappelle-toi qu'un jour le grand chêne a été un gland comme toi…")
  ::"Tant que mes chefs font comme si je gagnais beaucoup, je fais comme si je travaillais beaucoup."
  ::("A train station is where the trains stop.\n" ^ "A bus station is where the bus stop\n"
  							 ^ "On my desk there is a workstation")
  :: [] ) in
let ajokes = Array.of_list ljokes in
  begin
  	(Random.self_init ();
  	print_endline (Array.get ajokes (Random.int (Array.length ajokes))))
  end;

