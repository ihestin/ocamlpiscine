(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   nucleotides.ml                                     :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ihestin <marvin@42.fr>                     +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/05/30 09:57:35 by ihestin           #+#    #+#             *)
(*   Updated: 2018/05/30 09:57:37 by ihestin          ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)


type phosphate = string
type deoxyribose = string
type nucleobase = A | T | C | G | None
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


(* ************************************************************************** *)

let () =
    let pr_nucl c =
       Printf.printf "nucleotide correspondant a '%c' : \n" c;
       let prnuc x = match x with
        | A -> 'A'
        | T -> 'T'
        | C -> 'C'
        | G -> 'G'
        | None -> '-' in
		let g = (generate_nucleotide c) in
		Printf.printf " phosphate: %s;  deoxyribose: %s; nucleobase: %c \n" g.phos g.deox (prnuc g.nucl)
	in
	 pr_nucl 'A';
	 pr_nucl 'T';
	 pr_nucl 'C';
	 pr_nucl 'G';
	 pr_nucl 'x'
(* ************************************************************************** *)



