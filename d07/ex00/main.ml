(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ihestin <marvin@42.fr>                     +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/06/06 19:31:30 by ihestin           #+#    #+#             *)
(*   Updated: 2018/06/06 19:31:34 by ihestin          ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let () = 
    let people = new People.people "Isabelle" in 
    print_endline "Call after instanciation";  
    print_endline (people#to_string);  
    people#talk;
    people#die

