
let rec cycle scene =
  if (scene#alive) then
    begin
      let timer = Sys.time () in
      if (timer >= (scene#get_timer +. 1.)) then
        begin 
          Save.set_data scene#format_data;
          cycle scene#set_timer 
        end
      else 
        begin 
          cycle scene#handle_event 
        end 
    end

  else 
    begin
      Save.set_data scene#format_data;
      scene#game_over
    end

let _ = 
  try (
    let init_scene = ((new Scene.scene)#init Save.get_data) in
    Graphics.open_graph " 1000x800";
    init_scene#draw_scene;
    cycle init_scene;
    ignore (Graphics.moveto 430  110);
    ignore (Graphics.draw_string "press anything to quit");
    ignore (Graphics.read_key ())
  ) with
  | Graphics.Graphic_failure("fatal I/O error") -> print_endline "Bye"
  | _ -> print_endline "Bye"


