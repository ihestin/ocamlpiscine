(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   jokes.ml                                           :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ihestin <marvin@42.fr>                     +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/06/04 12:03:26 by ihestin           #+#    #+#             *)
(*   Updated: 2018/06/04 12:03:30 by ihestin          ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

(* type myexeption = exception of string; *)

let read_jokesl file =
	let jokesl = ref [] in
		begin
		try
			let fd = open_in file in
			let  i = ref 0 and js = ref "" in  
			try
				while true; do
				    let s = input_line fd in 
				    if String.length s > 0 then
				    if (String.get s 0) = '*' then
				    begin
				    if (!i > 0) then
				    	begin
				    		jokesl := !js :: !jokesl;
				    		js := "";
				    		i := 0
				    	end
				    end
					else
					begin
						js := (!js ^ s ^ "\n");
						incr i;
					end
				done
			with
			| End_of_file -> (close_in fd; if (!i > 0) then jokesl := !js :: !jokesl)
			| Failure err -> (close_in fd; print_endline ("Probleme lecture " ^ err))
		with
		| _ -> (print_endline "erreur ouverture fichier : " ; 
						raise ( Invalid_argument " Il faut passer un nom valide fichier de blagues en parametre"))
		end;
		!jokesl

let () = 
	if Array.length Sys.argv < 2 then
		print_endline "Il faut passer le nom du fichier de blagues en parametre "
	else
	  let ljokes = (read_jokesl (Array.get Sys.argv 1)) in
  	  let ajokes = (Array.of_list ljokes) in
  	  	if Array.length ajokes = 0 then
  	  		raise ( Invalid_argument " Il faut passer en parametre un fichier de blagues non vide ")
  	  	else
  	    begin
  			(Random.self_init ();
  			print_string (Array.get ajokes (Random.int (Array.length ajokes))))
  		end
