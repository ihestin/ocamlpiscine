(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_print_comb.ml                                   :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ihestin <marvin@42.fr>                     +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/05/28 19:30:47 by ihestin           #+#    #+#             *)
(*   Updated: 2018/05/28 19:34:01 by ihestin          ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let ft_print_comb () =
  let rec loop1 i1 = 
      if i1 <= 7 then
        begin
        let rec loop2 i2 = 
          if i2 <= 8 then
            begin 
            let rec loop3 i3 = 
              if i3 <= 9 then
                begin
              		print_int i1; print_int i2; print_int i3;
              		if (i1 < 7) then print_string ", "
              		   else print_string "\n";
              		loop3 (i3 + 1)
              	end
            in 
            loop3 (i2 + 1);
            loop2 (i2 + 1)
            end
        in loop2 (i1 + 1);
        loop1 (i1 + 1)
        end;
     in loop1 0

let main () = 
	print_string "Before call [";
    ft_print_comb();
	print_string "]After call "

(* ************************************************************************** *)
let () = main ()
