(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ex02.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ihestin <marvin@42.fr>                     +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/06/06 11:20:16 by ihestin           #+#    #+#             *)
(*   Updated: 2018/06/06 11:20:22 by ihestin          ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

module type PAIR = sig val pair : (int * int) end
module type VAL = sig val x : int end

module type MAKEPROJECTION = 
	functor (Pair : PAIR) -> VAL

module MakeFst : MAKEPROJECTION =
  functor (Pair : PAIR) ->
    struct
      let (x, _) = Pair.pair
    end

module MakeSnd : MAKEPROJECTION =
  functor (Pair : PAIR) ->
    struct
      let (_, x) = Pair.pair
    end




module Pair : PAIR = struct let pair = ( 21, 42 ) end
module Fst : VAL = MakeFst (Pair)
module Snd : VAL = MakeSnd (Pair)
let () = Printf.printf "Fst.x = %d, Snd.x = %d\n" Fst.x Snd.x

