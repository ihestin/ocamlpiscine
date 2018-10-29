(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_print_alphabet.ml                               :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ihestin <marvin@42.fr>                     +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/05/28 18:48:59 by ihestin           #+#    #+#             *)
(*   Updated: 2018/05/28 19:07:18 by ihestin          ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let ft_print_alphabet () =
  let ascii_of_a = int_of_char 'a' in
  let ascii_of_z = int_of_char 'z' in
  let rec loop ascii_of_current_char =
      if ascii_of_current_char <= ascii_of_z then
      let char_of_current_char = char_of_int ascii_of_current_char in
      print_char char_of_current_char;
      loop (ascii_of_current_char + 1)
  in
  loop ascii_of_a ;
  print_char '\n'  

let main () = 
    ft_print_alphabet()

(* ************************************************************************** *)
let () = main ()
