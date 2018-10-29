(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ex01.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ihestin <marvin@42.fr>                     +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/06/05 19:27:08 by ihestin           #+#    #+#             *)
(*   Updated: 2018/06/05 19:27:10 by ihestin          ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

module StringHash : (Hashtbl.HashedType with type t = String.t) =
  struct
    type t = String.t
    let equal a b = (String.compare a b = 0)

	let hash s = 
	    let l =  (String.length s) in 
        let rec hash_aux i acc =
            if i >= l then
            	acc
            else
                hash_aux (i + 1) ((acc lsl 5) + acc + (int_of_char s.[i]))
        in hash_aux 0 5381 

  end

module StringHashtbl : (Hashtbl.S with type key = String.t) = Hashtbl.Make (StringHash)


let () =
let ht = StringHashtbl.create 5 in
let values = [ "Hello"; "world"; "42"; "Ocaml"; "H" ] in
let pairs = List.map (fun s -> (s, String.length s)) values in
List.iter (fun (k,v) -> StringHashtbl.add ht k v) pairs;
StringHashtbl.iter (fun k v -> Printf.printf "k = \"%s\", v = %d\n" k v) ht