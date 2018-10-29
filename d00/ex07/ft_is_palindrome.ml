(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_is_palindrome.ml                                :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ihestin <marvin@42.fr>                     +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/05/29 11:14:05 by ihestin           #+#    #+#             *)
(*   Updated: 2018/05/29 11:15:19 by ihestin          ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let ft_is_palindrome s =
    let long = (String.length s) in
    let l1 = 0 and l2 = long -1 in
    let rec loop s i1 i2 =
        if i2 <= i1 then 
          true
        else
          if String.get s i1 == String.get s i2 then
            loop s (i1 + 1) (i2 - 1)
        else
          false
    in loop s l1 l2

let main () =
  begin
  let a = "" in
     print_string ("Test with [" ^ a ^ "]: ");
     print_string ( if (ft_is_palindrome a) then "True" else "False" ); 
     print_char '\n'
  end;
  begin
  let a = "radar" in
     print_string ("Test with [" ^ a ^ "]: ");
     print_string ( if (ft_is_palindrome a) then "True" else "False" ); 
     print_char '\n'
  end;
  begin
  let a = "i" in
     print_string ("Test with [" ^ a ^ "]: ");
     print_string ( if (ft_is_palindrome a) then "True" else "False" ); 
     print_char '\n'
  end;
  begin
  let a = "aa" in
     print_string ("Test with [" ^ a ^ "]: ");
     print_string ( if (ft_is_palindrome a) then "True" else "False" ); 
     print_char '\n'
  end;
  begin
  let a = "ab" in
     print_string ("Test with [" ^ a ^ "]: ");
     print_string ( if (ft_is_palindrome a) then "True" else "False" ); 
     print_char '\n'
  end;
  begin
  let a = "radar1" in
     print_string ("Test with [" ^ a ^ "]: ");
     print_string ( if (ft_is_palindrome a) then "True" else "False" ); 
     print_char '\n'
  end


(* ************************************************************************** *)

let () = main ()


