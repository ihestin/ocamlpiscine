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
    let dalek  = new Dalek.dalek  in

print_endline (doctor#to_string); 

   	print_endline (dalek#to_string);
   	dalek#talk ;
   	dalek#exterminate people;
   	people#die;
  	print_endline (dalek#to_string);
  	dalek#talk;
  	dalek#talk;
  	dalek#die

 

   	



