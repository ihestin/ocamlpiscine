(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   Color.ml                                           :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ihestin <marvin@42.fr>                     +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/06/02 08:41:25 by ihestin           #+#    #+#             *)
(*   Updated: 2018/06/02 08:41:32 by ihestin          ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)


type t = Spade | Heart | Diamond | Club

let all = Spade :: Heart :: Diamond :: Club :: []

let toString col = match col with
    | Spade -> "S"
    | Heart -> "H"
    | Diamond -> "D"
    | Club -> "C"

let toStringVerbose col = match col with
    | Spade -> "Spade"
    | Heart -> "Heart"
    | Diamond -> "Diamond"
    | Club -> "Club"
