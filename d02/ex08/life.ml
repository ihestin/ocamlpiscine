(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   life.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ihestin <marvin@42.fr>                     +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/05/31 08:56:12 by ihestin           #+#    #+#             *)
(*   Updated: 2018/05/31 08:56:15 by ihestin          ###   ########.fr       *)
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

(* ************************** exercice 07        **************************** *)
let generate_bases_triplets (r : rna) =
    let rec base_t r acc = match r with
        | a :: b :: c :: d -> base_t d (acc @ [(a,b,c)]) 
        | _ -> acc
    in
    base_t r []

type aminoacid = Stop | Ala | Arg | Asn | Asp | Cys | Gln | Glu | Gly | His | Ile | Leu | Lys | Met | Phe | Pro | Ser 
		| Thr | Trp | Tyr | Val | None

type protein = aminoacid list

let aminoacid_to_string a = match a with
    | Stop ->"End of translation"
    | Ala -> "Alanine"
    | Arg -> "Arginine"
    | Asn -> "Asparagine"
    | Asp -> "Aspartique"
    | Cys -> "Cysteine"
    | Gln -> "Glutamine"
    | Glu -> "Glutamique"
    | Gly -> "Glycine"
    | His -> "Histidine"
    | Ile -> "isoleucine"
    | Leu -> "Leucine"
    | Lys -> "Lysine"
    | Met -> "Methionine"
    | Phe -> "Phenylalanine"
    | Pro -> "Proline"
    | Ser -> "Serine"
    | Thr -> "Threonine"
    | Trp -> "Tryptophane"
    | Tyr -> "Tyrosine"
    | Val -> "Valine"
    | _   ->  "None"

let string_of_protein (p : protein) =
 let rec stpr p acc = match p with
   | [] -> acc
   | a :: [] -> acc ^ (aminoacid_to_string a)
   | a :: b  -> stpr b (acc ^ (aminoacid_to_string a) ^ ", ")
  in
  stpr p "Protein: "

 let baset_to_amin t = match t with
    | (U, A, A) | (U, A, G) | (U, G, A)  -> Stop 
    | (G, C, A) | (G, C, C) | (G, C, G) | (G, C, U)  -> Ala 
    | (A, G, A) | (A, G, G) | (C, G, A) | (C, G, C) | (C, G, G) | (C, G, U) -> Arg 
    | (A, A, C) | (A, A, U) -> Asn 
    | (G, A, C) | (G, A, U) -> Asp
    | (U, G, C) | (U, G, U) -> Cys 
    | (C, A, A) | (C, A, G) -> Gln 
    | (G, A, A) | (G, A, G) -> Glu
    | (G, G, A) | (G, G, C) | (G, G, G) | (G, G, U) -> Gly
    | (C, A, C) | (C, A, U) -> His
    | (A, U, A) | (A, U, C) | (A, U, U) -> Ile 
    | (C, U, A) | (C, U, C) | (C, U, G) | (C, U, U) | (U, U, A)| (U, U, G) -> Leu 
    | (A, A, A) | (A, A, G) -> Lys 
    | (A, U, G) -> Met
    | (U, U, C) | (U, U, U) -> Phe 
    | (C, C, C) | (C, C, A) | (C, C, G) | (C, C, U) -> Pro 
    | (U, C, A) | (U, C, C) | (U, C, G) | (U, C, U) | (A, G, U) | (A, G, C) -> Ser 
    | (A, C, A) | (A, C, C) | (A, C, G) | (A, C, U) -> Thr 
    | (U, G, G) -> Trp 
    | (U, A, C) | (U, A, U) -> Tyr 
    | (G, U, A) | (G, U, C) | (G, U, G) | (G, U, U) -> Val
    | _   -> None
    
let decode_arn (r : rna) : protein =
  let rec decode_r t (acc : protein) = match t with
        | [] -> acc
        | a :: b -> if (baset_to_amin a) = Stop then acc @ [baset_to_amin a] 
        					else decode_r b (acc @ [baset_to_amin a])
    in decode_r (generate_bases_triplets r) []




(* ************************** exercice 07 fin    **************************** *)

(* ************************************************************************** *)
let life nb =
	if nb < 3 then print_endline "you must have a helix greater to make life"
	else
   let h = generate_helix 30 in
   let r = generate_rna h in
   begin
   	print_string "We make helix with ";print_int nb; print_endline " nucleotides";
   	print_endline (helix_to_string h);
   	print_char '\n';
   	print_endline "Here is the complementary helix";
	print_endline (helix_to_string (complementary_helix h));
   	print_char '\n';
   	print_endline "And now rna";
	print_endline (rna_to_string r);
   	print_char '\n';
   	print_endline "Ouahh this is life";
	print_endline (string_of_protein (decode_arn r))
   end
 


let () = 
	life 50;
   	print_char '\n';
  	life 50;
   	print_char '\n';
  	life 25;
   	print_char '\n';
  	life 25;
   	print_char '\n';
  	life 30;


(* ************************************************************************** *)
