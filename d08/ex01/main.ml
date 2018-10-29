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
class eau =
    object
        inherit Molecule.molecule "Eau"  [(new Mendel.hydrogen);  (new Mendel.oxygen) ; (new Mendel.hydrogen)]
    end

 
 let () =
    let water = new Moleex.water in
    let tnt = new Moleex.tnt in
    let dioxcarbon = new Moleex.dioxcarbon in
    let monoxcarbon = new Moleex.monoxcarbon in
    let soude = new Moleex.soude in
    let chloreacide = new Moleex.chloreacide in
    let sel = new Moleex.sel in
    let eau = new eau in
        print_endline water#to_string;
        print_endline tnt#to_string;
        print_endline dioxcarbon#to_string;
        print_endline monoxcarbon#to_string;
        print_endline soude#to_string;
        print_endline chloreacide#to_string;
        print_endline sel#to_string;
        print_endline eau#to_string;

        print_endline (water#name^" equals "^eau#name^" : "^(string_of_bool (water#equals eau)));
        print_endline (soude#name^" equals "^eau#name^" : "^(string_of_bool (soude#equals eau)));
 


    