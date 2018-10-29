(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_print_rev.ml                                    :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ihestin <marvin@42.fr>                     +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/05/29 09:33:39 by ihestin           #+#    #+#             *)
(*   Updated: 2018/05/29 09:48:43 by ihestin          ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let ft_print_rev s =
  let long = String.length s in
  let rec loop s i =
     if i >= 0 then
       begin
       print_char (String.get s i);
       loop s (i - 1)
       end
     else
       print_char '\n'
     in 
       loop s (long - 1)

let main () =
  begin
  let a = "Hello Worl !" in
     print_string ("Test with [" ^ a ^ "]: \n");
     ft_print_rev a;
     print_char '\n'
  end;
  begin
  let a = "" in
     print_string ("Test with [" ^ a ^ "]: \n");
     ft_print_rev a;
     print_char '\n'
  end;
  begin
  let a = "0123456789\n" in
     print_string ("Test with [" ^ a ^ "]: \n");
     ft_print_rev a;
     print_char '\n'
  end;
  begin
  let a = "1" in
     print_string ("Test with [" ^ a ^ "]: \n");
     ft_print_rev a;
     print_char '\n'
  end

(* ************************************************************************** *)

let () = main ()
