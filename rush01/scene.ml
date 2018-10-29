
class scene =
  object (self)

    val _alive = true
    val _timer = 0.
    
    val _health = 100
    val _hygiene = 100
    val _energy = 100
    val _happyness = 100

    val _pixel = 20
    val _y_range = 700
    val _x_health = 40
    val _x_hygiene = 280
    val _x_energy = 520
    val _x_happyness = 760
                    
    val _y_button = 50
    val _h_button = 40
    val _w_button = 100
    val _x_eat = 90
    val _x_thunder = 339
    val _x_bath = 570
    val _x_kill = 810
    val _x_retry = 450

    method refresh = new scene
    
    method init (he, en, hy, ha) =
      if (he > 0 && en > 0 && hy > 0 && ha > 0) then
      {< 
        _health = he;
        _energy = en;
        _hygiene = hy;
        _happyness = ha;
      >} 
      else 
      {< 
        _health = 100;
        _energy = 100;
        _hygiene = 100;
        _happyness = 100;
        _alive = true;
        _timer = 0.
      >}

    method alive = 
      if (_health > 0 && _hygiene > 0 && _energy > 0 && _happyness > 0) then true
      else false
    
    method get_timer = _timer
    
    method get_health = _health
    method get_hygiene = _hygiene
    method get_energy = _energy
    method get_happyness = _happyness

    method format_data = 
      (string_of_int _health) ^ ";" ^
      (string_of_int _energy) ^ ";" ^
      (string_of_int _hygiene) ^ ";" ^
      (string_of_int _happyness) ^ "\n" 

    method set_health v = 
      match v with
      | v when (v + _health) < 0 -> 0
      | v when (v + _health) > 100 -> 100
      | _ -> (v + _health)

    method set_hygiene v = 
      match v with
      | v when (v + _hygiene) < 0 -> 0
      | v when (v + _hygiene) > 100 -> 100
      | _ -> (v + _hygiene)
    
    method set_energy v = 
      match v with
      | v when (v + _energy) < 0 -> 0
      | v when (v + _energy) > 100 -> 100
      | _ -> (v + _energy)
    
    method set_happyness v = 
      match v with
      | v when (v + _happyness) < 0 -> 0
      | v when (v + _happyness) > 100 -> 100
      | _ -> (v + _happyness)

    method set_timer = 
      let dec = {< _timer = (_timer +. 1.) ; _health = (self#set_health (-1)) >} in
      ignore (self#ranges);
      dec

    method to_string = 
      begin
        "health: " ^ (string_of_int _health) ^
        "hygiene: " ^ (string_of_int _hygiene) ^
        "energy: " ^ (string_of_int _energy) ^
        "happyness: " ^ (string_of_int _happyness) ^
        "timer: " ^ (string_of_float _timer)
      end

    method print_list lst =
      let rec loop lst =
        match lst with
        | [] -> ()
        | h::t -> print_endline h; loop t
      in loop lst

    method draw_creature () =
      let img = open_in "pok.txt" in
      let rec read_line img list = 
        try (
          let str = input_line img in
          read_line img (list @ [str])
        ) with
        | End_of_file -> list
        | _ -> []
      in
      let lst = read_line img [] in
      let rec print_line line x y =
        match line with
        | [] -> ()
        | h::t -> 
            match h with
            | "1" -> 
                Graphics.set_color (Graphics.rgb 0 0 0);
                Graphics.fill_rect x y _pixel _pixel;
                print_line t (x + _pixel) y
            | "r" -> 
                Graphics.set_color (Graphics.rgb 232 32 32);
                Graphics.fill_rect x y _pixel _pixel;
                print_line t (x + _pixel) y
            | "y" -> 
                Graphics.set_color (Graphics.rgb 255 217 30);
                Graphics.fill_rect x y _pixel _pixel;
                print_line t (x + _pixel) y
            | _ -> 
                Graphics.set_color (Graphics.rgb 255 255 255);
                Graphics.fill_rect x y _pixel _pixel;
                print_line t (x + _pixel) y
      in
      let rec loop lst x y = 
        match lst with
        | [] -> ()
        | h::t -> (print_line (String.split_on_char ',' h) x y); loop t x (y - _pixel)
      in loop lst 320 580;

    method draw_range name value x y =
      let w = 200 in
      let h = 30 in
      Graphics.moveto x (y + 40);
      Graphics.set_color (Graphics.rgb 0 0 0);
      Graphics.draw_string name;
      Graphics.set_color (Graphics.rgb 255 217 30);
      Graphics.draw_rect x y w h;
      Graphics.fill_rect x y 200 h;
      Graphics.set_color (Graphics.rgb 0 0 0);
      Graphics.fill_rect x y (value * 2) h

    method draw_button name x y =
      let w = 100 in let h = 40 in
      let (tx, ty) = Graphics.text_size name in
      Graphics.draw_rect x y w h ;
      Graphics.moveto (x + (w / 2) - (tx / 2)) (y + ty);
      Graphics.draw_string name

    method buttons =
      self#draw_button "EAT" 90 50;
      self#draw_button "THUNDER" 330 50;
      self#draw_button "BATH" 570 50;
      self#draw_button "KILL" 810 50

    method ranges = 
      self#draw_range "health" (self#get_health) 40 700;
      self#draw_range "hygiene" (self#get_hygiene) 280 700;
      self#draw_range "energy" (self#get_energy) 520 700;
      self#draw_range "happyness" (self#get_happyness) 760 700;

    method draw_scene = 
      self#draw_creature ();
      self#ranges;
      self#buttons

    method game_over = 
      Graphics.clear_graph ();
      self#draw_creature ();
      self#draw_range "health" (self#get_health) 40 700;
      self#draw_range "hygiene" (self#get_hygiene) 280 700;
      self#draw_range "energy" (self#get_energy) 520 700;
      self#draw_range "energy" (self#get_happyness) 760 700;
      let (size_x, size_y) = Graphics.text_size "Game Over" in
      Graphics.moveto (500 - (size_x / 2)) 130;
      Graphics.draw_string "Game Over";

    method handle_event = 
      let pressed = (Graphics.button_down ()) in
      if (pressed) then
        begin
          let rec loop pressed =
            if (pressed) then loop (Graphics.button_down ()) 
          in loop pressed;
             let new_scene = self#listen_event (Graphics.mouse_pos ()) in
             Save.set_data self#format_data;
             new_scene
        end
      else 
        begin
          {<>}
        end
    
    method listen_event (x, y) =
      if ((x >= _x_eat) && (x <= (_x_eat + _w_button))) &&
        (y >= _y_button) && (y <= (_y_button + _h_button))
      then begin self#action "EAT" end

      else if ((x >= _x_bath) && (x <= (_x_bath + _w_button))) &&
        (y >= _y_button) && (y <= (_y_button + _h_button))
      then begin self#action "BATH" end

      else if ((x >= _x_thunder) && (x <= (_x_thunder + _w_button))) &&
        (y >= _y_button) && (y <= (_y_button + _h_button))
      then begin self#action "THUNDER" end

      else if ((x >= _x_kill) && (x <= (_x_kill + _w_button))) &&
        (y >= _y_button) && (y <= (_y_button + _h_button))
      then begin self#action "KILL" end

      else self#action "NONE"

    method action effect =
      match effect with
      | "EAT" -> {< 
        _health = (self#set_health 25);
        _energy = (self#set_energy (-10));
        _hygiene = (self#set_hygiene (-20));
        _happyness = (self#set_happyness 5);
      >} 
      | "THUNDER" -> {< 
        _health = (self#set_health (-20));
        _energy = (self#set_energy (25));
        _happyness = (self#set_happyness (-20));
      >}
      | "BATH" -> {< 
        _health = (self#set_health (-20));
        _energy = (self#set_energy (-10));
        _hygiene = (self#set_hygiene 25);
        _happyness = (self#set_happyness 5);
      >}
      | "KILL" -> {< 
        _health = (self#set_health (-20));
        _energy = (self#set_energy (-10));
        _happyness = (self#set_happyness 20);
      >}
      | _ -> {<>}
 
  end
