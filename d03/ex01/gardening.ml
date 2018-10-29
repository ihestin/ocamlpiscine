(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   gardening.ml                                       :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ihestin <marvin@42.fr>                     +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/06/01 18:37:02 by ihestin           #+#    #+#             *)
(*   Updated: 2018/06/01 18:37:11 by ihestin          ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

type 'a tree = Nil | Node of 'a * 'a tree * 'a tree


let rec size = function
    | Nil                       ->  0
    | Node (_, left, right)     ->  1 + (size left) + (size right)

let rec height = function
    | Nil                       ->  0
    | Node (_, left, right)     ->  1 + (max (height left) (height right))

let draw_rectangle x y l h =
	if (l > 0 && h > 0) then
	begin
		let x1 = (x - (l / 2)) in  
		let y1 = (y - (h / 2)) in 
		  	Graphics.moveto x1 y1;
		  	Graphics.lineto x1 (y1 + h);
		  	Graphics.lineto (x1 + l) (y1 + h);
		  	Graphics.lineto (x1 + l) y1 ;
		  	Graphics.lineto x1 y1 
	end

let draw_tree_node  n =
	let rec draw_tree x y l h px py n = match n with
    | Node (v, n1, n2) -> begin
                            draw_rectangle x y l h;
                            Graphics.moveto (x - l/2 + 10) (y - 5);
                            Graphics.draw_string v;
                            Graphics.moveto  (x + l/2) y;
                            Graphics.lineto (x + px -l/2) (y + py );
                            draw_tree (x + px) (y + py) l h px (py/2) n1;
                            Graphics.moveto  (x + l/2) y;
                            Graphics.lineto (x + px  -l/2) (y - py);
                            draw_tree (x + px) (y - py) l h px (py/2) n2
                        end
    | Nil ->    draw_rectangle x y l h;
                Graphics.moveto (x - l/2 + 10) (y - 5);
                Graphics.draw_string "Nil"
     in draw_tree 60 400 80 20 100 200 n


let main () =
    Graphics.open_graph " 1000x800";
    let t = (Node ("42", Nil, Nil)) in
    begin
    draw_tree_node t ;
    Graphics.moveto 10 750; 
    Graphics.draw_string ("size: " ^ string_of_int (size t) ^ "  height: " ^ string_of_int (height t));
   	let c = Graphics.read_key () in
		Graphics.clear_graph()
	end;
    let t = (Node ("node 42", Node("tt", Nil, Node("01", (Node ("402", (Node ("toto", Nil, Nil)), Nil)), Nil)),(Node ("42", Nil, (Node ("42", Nil, Nil)))) )) in
    begin
    draw_tree_node t ;
    Graphics.moveto 10 750; 
    Graphics.draw_string ("size: " ^ string_of_int (size t) ^ "  height: " ^ string_of_int (height t));
   	let c = Graphics.read_key () in
		Graphics.clear_graph()
	end


 

let _ =
		main ()

