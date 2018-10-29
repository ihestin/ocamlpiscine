(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   rna.ml                                             :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ihestin <marvin@42.fr>                     +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/05/31 08:54:40 by ihestin           #+#    #+#             *)
(*   Updated: 2018/05/31 08:54:44 by ihestin          ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)


(* ************************** exercice 04        **************************** *)
type phosphate = string
type deoxyribose = string
  type nucleobase = A | T | C | G | U| None
type nucleotide = {
                    phos : phosphate;
                    deox : deoxyribose;
                    nucl : nucleobase
}

let generate_nucleotide c = match c with
  | 'A' -> { phos = "phosphate"; deox = "deoxyribose"; nucl = A}
  | 'T' -> { phos = "phosphate"; deox = "deoxyribose"; nucl = T}
  | 'C' -> { phos = "phosphate"; deox = "deoxyribose"; nucl = C}
  | 'G' -> { phos = "phosphate"; deox = "deoxyribose"; nucl = G}
  | _   -> { phos = "phosphate"; deox = "deoxyribose"; nucl = None}

(* ************************** exercice 04 fin    **************************** *)

(* ************************** exercice 05        **************************** *)
type helix = nucleotide list

let random_nucl i = match i with
	| 0 -> 'A'
	| 1 -> 'T'
	| 2 -> 'C'
	| 3 -> 'G'
	| _ -> 'X'

let nucleobase_to_string nuc = match nuc with
	| A -> "A"
	| T -> "T"
	| C -> "C"
	| G -> "G"
 | U -> "U"
	| _ -> "None"

let nucleotide_to_string (n : nucleotide) =
	n.phos ^ "-" ^ n.deox ^ "-" ^ (nucleobase_to_string n.nucl)

let cnucleobase nuc = match nuc with
	| A -> T
	| T -> A
	| C -> G
	| G -> C
	| _ -> None

let cnucleotide (n : nucleotide) =
	{phos = n.phos ; deox = n.deox; nucl = (cnucleobase n.nucl)}

let generate_helix n =
       Random.self_init ();
    let rec gen_hel (acc : helix) i =
        if i <= 0 then acc
    	else gen_hel ((generate_nucleotide (random_nucl (Random.int 4))) :: acc) (i - 1)
    in
    gen_hel [] n


let helix_to_string (h : helix) =
 let rec hts h acc = match h with
   | [] -> acc
   | a :: [] -> acc ^ (nucleotide_to_string a)
   | a :: b  -> hts b (acc ^ (nucleotide_to_string a) ^ ", ")
  in
  hts h "DNA: "

let complementary_helix (h : helix) =
 let rec ch h acc = match h with
   | [] -> acc
   | a :: b  -> ch b (acc @ [(cnucleotide a)])
  in
  ch h []

(* ************************** exercice 05 fin    **************************** *)
(* ************************** exercice 06        **************************** *)
type rna = nucleobase list
let base_to_rna (b : nucleobase) =
	if (b = T) then U else b

let rna_to_string (r : rna) =
 let rec rnats r acc = match r with
   | [] -> acc
   | a :: [] -> acc ^ (nucleobase_to_string a)
   | a :: b  -> rnats b (acc ^ (nucleobase_to_string a) ^ ", ")
  in
  rnats r "RNA: "


let generate_rna (h : helix) =
 let rec rna h (acc : rna) = match h with
   | [] -> acc
   | a :: b  -> rna b (acc @ [base_to_rna(cnucleobase a.nucl)])
  in
  rna h []


(* ************************** exercice 06 fin    **************************** *)

(* ************************************************************************** *)

let () = 
   let h = generate_helix 5 in
   let r = generate_rna h in
   begin
   	print_endline (helix_to_string h);
	print_endline (helix_to_string (complementary_helix h));
	print_endline (rna_to_string r)
   end


(* ************************************************************************** *)


