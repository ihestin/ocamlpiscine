(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_rot_n.ml                                        :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ihestin <marvin@42.fr>                     +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/05/29 11:16:31 by ihestin           #+#    #+#             *)
(*   Updated: 2018/05/29 11:16:36 by ihestin          ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)


let rec ft_rot_n n s =
let ft_rot c =
	if (c >= 'a' && c < 'z') || (c >= 'A' && c < 'Z') then
	  char_of_int ((int_of_char c) + 1)
	else 
	  if (c = 'z') then 'a' else if (c = 'Z') then 'A' else c
   in 
	if n <= 0 then
	  s
	else
	  ft_rot_n (n - 1) (String.map ft_rot s)



let main () =
  begin
  let a = "" and b = 15 in
     print_string ("Test with [" ^ a ^ "] and nb = "^ string_of_int b ^ " \n Resultat  ");
     print_string (ft_rot_n b a);
     print_char '\n'
  end;
  begin
  let a = "abcdefghijklmnopqrstuvwxyz [0123456789] ABCDEFGHIJKLMNOPQRSTUVWXYZ" and b = 0 in
     print_string ("Test with [" ^ a ^ "] and nb = "^ string_of_int b ^ " \n Resultat  ");
     print_string (ft_rot_n b a);
     print_char '\n'
  end;
  begin
  let a = "abcdefghijklmnopqrstuvwxyz [0123456789] ABCDEFGHIJKLMNOPQRSTUVWXYZ" and b = 1 in
     print_string ("Test with [" ^ a ^ "] and nb = "^ string_of_int b ^ " \n Resultat  ");
     print_string (ft_rot_n b a);
     print_char '\n'
  end;
  begin
  let a = "abcdefghijklmnopqrstuvwxyz [0123456789] ABCDEFGHIJKLMNOPQRSTUVWXYZ" and b = 5 in
     print_string ("Test with [" ^ a ^ "] and nb = "^ string_of_int b ^ " \n Resultat  ");
     print_string (ft_rot_n b a);
     print_char '\n'
  end;
  begin
  let a = "abcdefghijklmnopqrstuvwxyz [0123456789] ABCDEFGHIJKLMNOPQRSTUVWXYZ" and b = 31 in
     print_string ("Test with [" ^ a ^ "] and nb = "^ string_of_int b ^ " \n Resultat  ");
     print_string (ft_rot_n b a);
     print_char '\n'
  end;
   begin
  let a = "abcdefghijklmnopqrstuvwxyz [0123456789] ABCDEFGHIJKLMNOPQRSTUVWXYZ" and b = 52 in
     print_string ("Test with [" ^ a ^ "] and nb = "^ string_of_int b ^ " \n Resultat  ");
     print_string (ft_rot_n b a);
     print_char '\n'
  end


(* ************************************************************************** *)

let () = main ()
