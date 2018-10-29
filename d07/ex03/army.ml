(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   army.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ihestin <marvin@42.fr>                     +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/06/07 15:10:12 by ihestin           #+#    #+#             *)
(*   Updated: 2018/06/07 15:10:19 by ihestin          ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)


class ['a] army  =
   object
     val mutable _lst : 'a list = []
      
     method add (e:'a) =  _lst <- _lst @ [e]
     method delete = match _lst with
        				| [] ->  _lst <- _lst
        				| (h:'a)::(t:'a list) -> _lst <- t
        
    method get_lst = _lst

end
