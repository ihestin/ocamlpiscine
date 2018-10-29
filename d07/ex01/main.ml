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
    let doctor = new Doctor.doctor "Doctor" 42 people in
 
   	print_endline (doctor#to_string); 

   	let newdoc = doctor#travel_in_time 2018 2060 in
   	print_endline (newdoc#to_string);
   	print_endline ("I am come back from the futur after 1 year of travel " ^ ((newdoc#travel_in_time 2060 2019)#to_string )); 	
   	print_endline (doctor#to_string); 
   	print_endline ("Aie I am steel in the futur " ^ (newdoc#to_string));


   	doctor#talk;
  	doctor#use_sonic_screwdriver


