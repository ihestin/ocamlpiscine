(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ex00.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ihestin <marvin@42.fr>                     +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/06/05 19:20:05 by ihestin           #+#    #+#             *)
(*   Updated: 2018/06/05 19:20:08 by ihestin          ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)


module StringSet = Set.Make(String)

let () =
	let set = List.fold_right StringSet.add [ "foo"; "bar"; "baz"; "qux" ] StringSet.empty in 
	StringSet.iter print_endline set;
	print_endline (StringSet.fold ( ^ ) set "")
