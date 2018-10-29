(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ihestin <marvin@42.fr>                     +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/06/01 21:18:24 by ihestin           #+#    #+#             *)
(*   Updated: 2018/06/01 21:18:34 by ihestin          ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

print_endline "test des fonctions \n";

begin
  let a = "abcdefghijklmnopqrstuvwxyz [0123456789] ABCDEFGHIJKLMNOPQRSTUVWXYZ" in
  	print_endline "Chaine de ref., application de rot42 puis de unrot42";
  	print_endline a;
  let b = Cipher.rot42 a in
  begin
  	print_endline b;
  	print_endline (Uncipher.unrot42 b)
  end;
   	print_endline "meme chaine ave caesar de 42, de 0 de 1  uncaesar de 25 et  caesar et uncaesar de 5";
   	print_endline (Cipher.caesar a 42);
   	print_endline (Cipher.caesar a 0);
   	print_endline (Cipher.caesar a 1);
   	print_endline (Uncipher.uncaesar a 1);
  let b = Cipher.caesar a 5 in
  begin
  	print_endline b;
  	print_endline (Uncipher.uncaesar b 5)
  end;
   print_endline "test avec xor Cipher, Cipher unCypher int = 453";
   let b = Cipher.xor a 453 in
  begin
  	print_endline b;
  	print_endline (Cipher.xor b 453);
  	print_endline (Uncipher.xor b 453)
  end;
  print_endline "test avec  ft_crypt et [ caesar ; xor ; caesar ]";
  let b = Cipher.ft_crypt a [Cipher.caesar ; Cipher.xor ; Cipher.caesar] in 
  begin
  	print_endline " Encrypt";
  	print_endline b;
  	print_endline " Decrypt";
  	print_endline (Uncipher.ft_uncrypt b [ Uncipher.uncaesar ; Uncipher.xor ; Uncipher.uncaesar ])
  end
end
