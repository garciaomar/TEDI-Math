/// scr_money_control

// Local variables
var i;

// Prepare the game
if(global.game_ready == false){
    area_a = 0; area_b = 0;
    for(i = 0; i < instance_number(obj_money_area); i++){
        var area = instance_find(obj_money_area, i);
        if(area.tag == "a"){
            area_a = area;
        }
        if(area.tag == "b"){
            area_b = area;
        }
    }
    if(instance_exists(area_a) && instance_exists(area_b)){
        global.game_ready = true;
        global.game_waiting = false;
    }
}

// Run the game
if(global.game_ready){
    if(global.game_waiting){
        // Check for interaction with the two areas
        if(area_a.selected){
            if(area_a.correct){
                room_restart();
                global.game_ready = false;
            }else{
                game_restart();
            }
        }else if(area_b.selected){
            if(area_b.correct){
                room_restart();
                global.game_ready = false;
            }else{
                game_restart();
            }
        }
    }else{
        // Create the problem
        var value_a = 0, value_b = 0;
        while(value_a == value_b){
            switch(global.difficulty){
                case 1:
                    value_a = irandom_range(1, 10);
                    value_b = irandom_range(1, 10);
                break;
                case 2:
                    value_a = irandom_range(11, 20);
                    value_b = irandom_range(11, 20);
                break;
                case 3:
                    value_a = irandom_range(21, 30);
                    value_b = irandom_range(21, 30);
                break;
            }
        }
        area_a.money_value = value_a;
        area_b.money_value = value_b;
        // Get the correct answer
        if(value_a > value_b){
            area_a.correct = true;
            area_b.correct = false;
        }else if(value_b > value_a){
            area_b.correct = true;
            area_a.correct = false;
        }
        // Set the game to waiting for answer
        global.game_waiting = true;
    }
}

