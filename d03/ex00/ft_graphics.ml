(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_graphics.ml                                     :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ihestin <marvin@42.fr>                     +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/06/01 14:14:03 by ihestin           #+#    #+#             *)
(*   Updated: 2018/06/01 14:14:31 by ihestin          ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

type 'a tree = Nil | Node of 'a * 'a tree * 'a tree

let draw_square x y size =
	if (size > 0) then
	begin
		let x1 = (x - (size / 2)) and y1 = (y - (size /2 )) in 
		  	Graphics.moveto x1 y1;
		  	Graphics.lineto x1 (y1 + size);
		  	Graphics.lineto (x1 + size) (y1 + size);
		  	Graphics.lineto (x1 + size) y1 ;
		  	Graphics.lineto x1 y1 
	end

let draw_tree_node  node =
	let rec draw_tree x y l px py node = match node with
    | Node (v, n1, n2) -> begin
                            draw_square x y l;
                            Graphics.moveto (x - 10) y;
                            Graphics.draw_string (string_of_int v);
                            Graphics.moveto  (x + l/2) y;
                            Graphics.lineto (x + px -l/2) (y + py );
                            draw_tree (x + px) (y + py) l px py n1;
                            Graphics.moveto  (x + l/2) y;
                            Graphics.lineto (x + px  -l/2) (y - py);
                            draw_tree (x + px) (y - py) l px py n2
                        end
    | Nil ->    draw_square x y l;
                Graphics.moveto (x - l/2 + 10) (y);
                Graphics.draw_string "Nil"
     in draw_tree 100 300 50 200 100 node 


let main () =
    Graphics.open_graph " 800x600";
    draw_square 100 200 100;
    Graphics.moveto 50 400; 
   let c = Graphics.read_key () in
   		Graphics.draw_string "Bye ";
    draw_square 400 300 300;
    Graphics.moveto 400 300; 
   let c = Graphics.read_key () in
	Graphics.clear_graph();
    Graphics.moveto 400 300; 
    draw_square 150 450 300;
   let c = Graphics.read_key () in
	Graphics.clear_graph();
    draw_tree_node (Node (42, Nil, Nil)) ;
   let c = Graphics.read_key () in
	Graphics.clear_graph()





let _ = 
	main ();