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
   let methane = new Alkaneex.methane in
         print_endline methane#to_string;
    let ethane = new Alkaneex.ethane in
         print_endline ethane#to_string;
  
 let propane = new Alkaneex.propane in
   let octane = new Alkaneex.octane in
         print_endline methane#to_string;
         print_endline propane#to_string;
         print_endline octane#to_string; 
  


    