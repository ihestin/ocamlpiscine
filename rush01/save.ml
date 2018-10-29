let default_data = "100;100;100;100"

let parse_data str = 
  let list = (String.split_on_char ';' str) in
    match list with 
    | he::en::hy::ha::t -> (
      int_of_string he, 
      int_of_string en,
      int_of_string hy,
      int_of_string ha
    ) 
    | _ -> (100, 100, 100, 100)

let get_data =
  try (
    let file = open_in "./save.itama" in
    let data = input_line file in
    parse_data data
  ) with
  | Sys_error err -> ignore (print_endline err); (100,100,100,100)
  | _ -> let opout = open_out "./save.itama" in 
    output_string opout default_data; parse_data (default_data)
  
let set_data str =
  try (
    let file = open_out "./save.itama" in
     output_string file str
  ) with
  | _ -> failwith "I/O error"


