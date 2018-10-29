(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ex03.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ihestin <marvin@42.fr>                     +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/06/06 11:49:27 by ihestin           #+#    #+#             *)
(*   Updated: 2018/06/06 11:49:30 by ihestin          ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

module type FIXED = sig
type t
val of_float : float -> t
val of_int : int -> t
val to_float : t -> float
val to_int : t -> int
val to_string : t -> string
val zero : t
val one : t
val succ : t -> t
val pred : t -> t
val min : t -> t -> t
val max : t -> t -> t
val gth : t -> t -> bool
val lth : t -> t -> bool
val gte : t -> t -> bool
val lte : t -> t -> bool
val eqp : t -> t -> bool (** physical equality *)
val eqs : t -> t -> bool (** structural equality *)
val add : t -> t -> t
val sub : t -> t -> t
val mul : t -> t -> t
val div : t -> t -> t
val foreach : t -> t -> (t -> unit) -> unit
end

module type FRACTIONNAL_BITS = sig val bits : int end

module type MAKE =
    functor (Fractionnal_bits  : FRACTIONNAL_BITS) -> FIXED

module Make : MAKE =
  functor ( Fractionnal_bits : FRACTIONNAL_BITS ) ->
	struct
        type t                 = int
        let of_float f         = int_of_float (f *. (float_of_int (1 lsl Fractionnal_bits.bits)))
        let of_int i           = i lsl Fractionnal_bits.bits
        let to_int t           = t lsr Fractionnal_bits.bits
        let to_float t         = float_of_int t /. (float_of_int (1 lsl Fractionnal_bits.bits))
        let to_string t        = string_of_float (to_float t)
        let zero               = 0
        let one                = of_int 1
        let succ x   	 	   = x + 1
        let pred x        	   = x - 1
        let min x y       	   = if x <= y then x else y
        let max x y       	   = if x >= y then x else y
        let gth x y       	   = x > y
        let lth x y       	   = x < y
        let gte x y      	   = x >= y
        let lte x y      	   = x <= y
        let eqp x y      	   = x = y
        let eqs x y       	   = x == y
        let add x y       	   = x + y
        let sub x y      	   = x - y
        let mul x y       	   = (of_float((to_float x) *. (to_float y)))
        let div x y       	   = (of_float((to_float x) /. (to_float y)))
        let rec foreach x y f  = if lte x y then (f x; if lth x y then foreach (succ x) y f) 
    										else (f x; if gth x y then foreach (pred x) y f)
    end
  
module Fixed4 : FIXED = Make (struct let bits = 4 end)
module Fixed8 : FIXED = Make (struct let bits = 8 end)
let () =
let x8 = Fixed8.of_float 21.10 in
let y8 = Fixed8.of_float 21.32 in
let r8 = Fixed8.add x8 y8 in
print_endline (Fixed8.to_string r8);
Fixed4.foreach (Fixed4.zero) (Fixed4.one) (fun f -> print_endline (Fixed4.to_string f));
let x4 = Fixed4.of_int 20 in
let y4 = Fixed4.of_float 22.00 in
print_endline (Fixed8.to_string (Fixed8.mul x8 y8));
print_endline (Fixed4.to_string (Fixed4.add x4 y4))


