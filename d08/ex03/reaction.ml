(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   reaction.ml                                        :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ihestin <marvin@42.fr>                     +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/06/08 19:41:11 by ihestin           #+#    #+#             *)
(*   Updated: 2018/06/08 19:41:16 by ihestin          ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)


class virtual reaction (start:(Molecule.molecule * int ) list) (result:(Molecule.molecule * int ) list)  =
    object (self)
      method virtual get_start : (Molecule.molecule * int ) list
      method virtual get_result : (Molecule.molecule * int ) list
      method virtual balance : reaction
      method virtual is_balanced : bool 
    end

