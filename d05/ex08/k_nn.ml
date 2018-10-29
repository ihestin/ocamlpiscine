(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   k_nn.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ihestin <marvin@42.fr>                     +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/06/05 18:49:39 by ihestin           #+#    #+#             *)
(*   Updated: 2018/06/05 18:49:43 by ihestin          ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

type radar = float array * string

let eu_dist a b = 
	let sizea = (Array.length a) in
	let sizeb = (Array.length a) in
	let size = if sizea <= sizeb then sizea else sizeb in
		if size <= 0 then
			invalid_arg "arg invalide"
		else
		let rec eu_dist_acc  (acc : float) i = 
		  if i = sizea then
		  	sqrt acc
		  else
		  	eu_dist_acc (acc +. (((Array.get a i) -. (Array.get b i)) ** 2.)) (i + 1)
		in 
		eu_dist_acc 0. 0


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
let tri ((d1 : float), s1) ((d2 : float), s2) = if d1 > d2 then 1 else if d1 = d2 then 0 else -1

let caldist (radarl : radar list) (ardr:float array) = 
	let rec dist radarl dl = match radarl with
	 | [] -> dl
	 | (ard,name) :: t -> dist t (((eu_dist ard ardr), name) :: dl)
	in dist radarl []

let  exnamelk disl  k = 
    let rec namlk disl  (namel:string list) i = match disl with
	    	|  [] -> namel
	    	| (d,name):: t -> if (i = 0) then namel else namlk t (name::namel) (i - 1 )
	    in namlk disl [] k

let crossover lst1 lst2 = 
	let rec is_in elt l = match l with
		| [] -> false
		| a::b -> if (elt = a) then true else is_in elt b
	in 
	let rec crossover_aux l1 l2 lcom = match l1 with
		| [] -> lcom
		| a::b -> if (not (is_in a lcom)) && (is_in a l2) then 
					crossover_aux b l2 (a :: lcom)
				  else 
					crossover_aux b l2 lcom
	in
	 crossover_aux lst1 lst2 []


let freq (namel : string list) =
	let unil = crossover namel namel in
	let i = ref 0 in
	let name = ref "" in
	let count (s : string) =
	  let j = ref 0 in
	  begin
	    List.iter (fun x -> if s = x then incr j) namel;
	    if !i < !j then
	      begin
	      	i := !j;
	      	name := s
	      end
	  end
	 in 
	 List.iter count unil;
	 !name
	

let k_nn (radarl : radar list) k ((ardr, s) : radar) = 
	if k = 0 || k > List.length radarl then
	  raise ( Invalid_argument " Parametre invalide")
	else 
	  freq (exnamelk (List.sort tri (caldist radarl ardr)) k)


let () =
let filtrain = Array.get Sys.argv 1 in
let filtest = Array.get Sys.argv 2 in
let kn = Array.get Sys.argv 3 in
let radarl = examples_of_file filtrain in
let rec test = function
	| a::b ->  (print_endline (k_nn radarl (int_of_string kn) a); test b)
	| []-> ()
  in test (examples_of_file filtest)

