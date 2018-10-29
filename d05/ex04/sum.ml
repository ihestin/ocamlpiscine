(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   sum.ml                                             :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ihestin <marvin@42.fr>                     +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/06/04 17:32:33 by ihestin           #+#    #+#             *)
(*   Updated: 2018/06/04 17:32:37 by ihestin          ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)


let sum x y = x +.y

let () =
    if Array.length Sys.argv <> 3 then
      raise ( Invalid_argument " Il faut passer deux flotants en parametre")
  	else
  	  let f1 = try float_of_string (Array.get Sys.argv 1) 
  			with Failure(_) -> raise ( Invalid_argument " Le parametre 1 n'est pas un flotant") in
  	  let f2  = try float_of_string (Array.get Sys.argv 2) 
  			with Failure(_) -> raise ( Invalid_argument " Le parametre 2 n'est pas un flotant") in
  	   print_endline (string_of_float (sum f1 f2))

