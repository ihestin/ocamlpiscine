(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   examples_of_file.ml                                :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ihestin <marvin@42.fr>                     +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/06/04 19:35:29 by ihestin           #+#    #+#             *)
(*   Updated: 2018/06/04 19:35:33 by ihestin          ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)
type radar = float array * string

let radar_of_str s =
	let slst = String.split_on_char ',' s in
 	   let rec pconv slst (fll : float list) = match slst with
		| [] -> ([||],"")
		| a::b::c -> pconv (b::c) ((float_of_string a) :: fll)
		| a::b    -> (Array.of_list (List.rev fll),a)
 		in pconv slst []
 

let examples_of_file file =
	let radarl =  ref [] in
	begin
		begin
	 	try
		let fd = open_in file in
			try 
				while true; do
		    	let s = input_line fd in
		    	if s <> "" then
		    		radarl := (!radarl @ ((radar_of_str s) :: []))
				done
			with
			| End_of_file -> close_in fd
			| Failure err -> (close_in fd; print_endline ("Probleme lecture " ^ err))
		with
			| _ -> (print_endline "erreur ouverture fichier : " ; 
						raise ( Invalid_argument " Il faut passer un nom valide fichier csv en parametre"))
		end;
		!radarl
	end
	


(* ************************************************************************** *)
let () =
  let filen = Array.get Sys.argv 1 in
    let print_rd (ard, s) =
        (Array.iter (fun x -> Printf.printf "F%f " x) ard; print_endline s)
    in
    List.iter print_rd (examples_of_file filen)

