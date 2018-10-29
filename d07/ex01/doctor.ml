(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   doctor.ml                                          :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ihestin <marvin@42.fr>                     +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/06/06 19:55:36 by ihestin           #+#    #+#             *)
(*   Updated: 2018/06/06 19:55:40 by ihestin          ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

class doctor (name:string) (age:int) (sidekick:People.people) =
    object (self)
        val _name = name
        val _age = age
        val _sidekick = sidekick
        val mutable _hp   = 100
        
        method to_string = (_name ^ " hp : " ^ (string_of_int _hp) ^ " age : " ^ (string_of_int _age) 
       		  ^ "\n  sidekick : " ^ _sidekick#to_string)
        method talk = print_endline "Hi! I’m the Doctor!"
        method private tardis_dr () = print_endline 
"   
           (\\. -- ./)
        O-0)))--|     \\
          |____________|
           -|--|--|--|-
           _T~_T~_T~_T_
          |____________|
          |_o_|____|_o_|
       .-~/  :  |   %  \\
.-..-~   /  :   |  %:   \\
`-'     /   :   | %  :   \\
       /   :    |#   :    \\
      /    :    |     :    \\
     /    :     |     :     \\
 . -/     :     |      :     \\ .
|\\  ~-.  :      |      :   .-~  /|
\\ ~-.   ~ - .  _|_  . - ~   .-~ /
  ~-.  ~ -  . _ _ _ .  - ~  .-~
       ~ -  . _ _ _ .  - ~
 "       
         method travel_in_time start arrival = self#tardis_dr () ;{< _age = (_age + (arrival - start))>}   
         method use_sonic_screwdriver = print_endline "Whiiiwhiiiwhiii Whiiiwhiiiwhiii Whiiiwhiiiwhii"
         method private regenerate () = _hp <- 100
            initializer print_endline ("Hello the doctor " ^ name ^ 
                      " is here and I am "^ (string_of_int age)  ^ " years old" )
    end

 
