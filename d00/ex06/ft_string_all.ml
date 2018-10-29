(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_string_all.ml                                   :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ihestin <marvin@42.fr>                     +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/05/29 10:04:44 by ihestin           #+#    #+#             *)
(*   Updated: 2018/05/29 10:05:50 by ihestin          ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let ft_string_all f s =
    let long = String.length s in
        let rec loop f s i =
          if i < 0 then
            true
          else if f (String.get s i) then
             loop f s (i - 1)
            else false
        in loop f s (long -1)

let is_digit c = c >= '0' && c <= '9'
let is_alpha c = (c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z')
let is_upper c = if (c >= 'a' && c <= 'z') then false else true

let main () =
  begin
  let a = "" in
     print_string ("Test with [" ^ a ^ "] is digit : "); 
     print_string ( if (ft_string_all is_digit a) then "True" else "False" ); 
     print_char '\n';
     print_string ("Test with [" ^ a ^ "] is alpha : "); 
     print_string ( if (ft_string_all is_alpha a) then "True" else "False" ); 
     print_char '\n';
     print_string ("Test with [" ^ a ^ "] is upper : "); 
     print_string ( if (ft_string_all is_upper a) then "True" else "False" ); 
     print_char '\n';
     print_char '\n'
  end;
begin
  let a = "asdaADSE" in
     print_string ("Test with [" ^ a ^ "] is digit : "); 
     print_string ( if (ft_string_all is_digit a) then "True" else "False" ); 
     print_char '\n';
     print_string ("Test with [" ^ a ^ "] is alpha : "); 
     print_string ( if (ft_string_all is_alpha a) then "True" else "False" ); 
     print_char '\n';
     print_string ("Test with [" ^ a ^ "] is upper : "); 
     print_string ( if (ft_string_all is_upper a) then "True" else "False" ); 
     print_char '\n';
     print_char '\n'
  end;
begin
  let a = "01247" in
     print_string ("Test with [" ^ a ^ "] is digit : "); 
     print_string ( if (ft_string_all is_digit a) then "True" else "False" ); 
     print_char '\n';
     print_string ("Test with [" ^ a ^ "] is alpha : "); 
     print_string ( if (ft_string_all is_alpha a) then "True" else "False" ); 
     print_char '\n';
     print_string ("Test with [" ^ a ^ "] is upper : "); 
     print_string ( if (ft_string_all is_upper a) then "True" else "False" ); 
     print_char '\n';
     print_char '\n'
  end

(* ************************************************************************** *)

let () = main ()
