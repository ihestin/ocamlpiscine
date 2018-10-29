(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_print_comb2.ml                                  :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ihestin <marvin@42.fr>                     +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/05/29 11:19:30 by ihestin           #+#    #+#             *)
(*   Updated: 2018/05/29 11:19:33 by ihestin          ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)


let ft_print_comb2 () =
    let ft_print_int l =
        if l < 10 then
        begin
            print_char '0';
            print_int l
        end
        else
            print_int l
    in
    let rec loop_comb2 i j =
    	ft_print_int i;
    	print_char ' ';
    	ft_print_int j;
    	if (i < 98) then
    	begin
    		print_char ',';
    	 	print_char ' ';
    	 	if (j < 99) then
    	 	  loop_comb2 i (j + 1)
    	 	else 
    	 	  loop_comb2 (i + 1) (i + 2)
    	end
    in loop_comb2 0 1;
    print_char '\n'

let main () = 
	print_string "Before call [";
    ft_print_comb2();
	print_string "] After call "

(* ************************************************************************** *)

let () = main ()
