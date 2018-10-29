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

 let rec prlist lst = match lst with
     | [] ->  print_endline "fin de liste\n"
     | a::b -> (print_endline a#to_string ; prlist b)
  in
    let people = new People.people "Isabelle" in 
    let dalek  = new Dalek.dalek  in
    let doct_army = new Army.army in
    let doctor = new Doctor.doctor "Doctor" 42 people in
print_endline (doctor#to_string); 
let newdoc = doctor#travel_in_time 2018 2060 in
    print_endline "arme avec 2 docteurs : ";
    doct_army#add doctor;
    doct_army#add newdoc;
    print_endline "composition de la liste de docteur : ";
    prlist doct_army#get_lst;
    print_endline "supression d'un medecin";
    doct_army#delete;
    print_endline "nouvelle composition de la liste de docteur : ";
    prlist doct_army#get_lst;

    print_endline "Armee de dalek ";
    let dal_army = new Army.army in
    print_endline "arme vide ";
     prlist dal_army#get_lst;
    print_endline "+3 dalek ";
    dal_army#add dalek;
    dalek#exterminate people;
    dal_army#add (Oo.copy dalek);
    dal_army#add (new Dalek.dalek);
    prlist dal_army#get_lst;
    
    print_endline "supression d'1 dalek ";
    dal_army#delete;
    prlist dal_army#get_lst;

    print_endline "test avec 1 people ";
    let peo_army = new Army.army in
    print_endline "arme vide ";
    prlist peo_army#get_lst;
    print_endline "+ 2 people ";
    peo_army#add (new People.people "toto");
    peo_army#add people;
    prlist dal_army#get_lst;
 






 

   	



