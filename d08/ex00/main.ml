(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ihestin <marvin@42.fr>                     +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/06/08 09:59:45 by ihestin           #+#    #+#             *)
(*   Updated: 2018/06/08 09:59:47 by ihestin          ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

 let () =
    print_endline "test";

    let hydro1 = new Mendel.hydrogen in
    let hydro2 = new Nonmetal.hydrogen in
    let heliu = new Mendel.helium in
    let lithiu = new Metals.lithium in
    print_endline hydro1#to_string;
    print_endline hydro2#to_string;
    print_endline heliu#to_string;
    print_endline lithiu#to_string;
    print_endline (hydro1#name^" equals "^hydro2#name^" : "^(string_of_bool (hydro2#equals hydro1)));
    print_endline (heliu#name^" equals "^hydro1#name^" : "^(string_of_bool (heliu#equals hydro1)))

