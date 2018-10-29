(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_ref.ml                                          :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ihestin <marvin@42.fr>                     +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/06/04 09:51:00 by ihestin           #+#    #+#             *)
(*   Updated: 2018/06/04 09:51:03 by ihestin          ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

type 'a ft_ref = { mutable content : 'a }

let return x =  {content = x} 
let get (x:'a ft_ref)  =  x.content
let set (x:'a ft_ref) y = x.content <- y
let bind (x:'a ft_ref) (f:'a ->'b ft_ref) = f (get x)

let () = 
	let i = 42 in 
		let ref_i = return i in
		begin
			Printf.printf " Valeur de i %d et valeur de get (ref_i = return i) %d \n" i (get ref_i);
			set ref_i ((get ref_i) / 2);
			Printf.printf " Apres application de \"set ref_i ((get ref_i) / 2)\" valeur de ref_i %d \n" (get ref_i);
			let ref_b = bind ref_i (fun x ->  (return (2 * x))) in
				Printf.printf " \"ref_b bind ref_i (fun x ->  return (2 * x)) = %d \" valeur de ref_i %d \n"
						(get ref_b) (get ref_i)
		end