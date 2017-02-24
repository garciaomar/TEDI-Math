/// scr_menu_control

// Local variables
var i;

// Check for dropdowns
for(i = 0; i < instance_number(obj_dropdown); i++){
    var drop = instance_find(obj_dropdown, i);
    // Level dropdown
    if(drop.tag == "level"){
        global.difficulty = drop.sel + 1;
    }
}

// Check for buttons
for(i = 0; i < instance_number(obj_button); i++){
    var btn = instance_find(obj_button, i);
    // Game type buttons
    if(btn.pressed){
        switch(btn.tag){
            case "prenum":
                global.game = PRENUM;
            break;
            case "num":
                global.game = NUM;
            break;
            case "medition":
                global.game = MEDITION;
            break;
            case "time":
                global.game = TIME;
            break;
            case "money":
                global.game = MONEY;
            break;
            case "dev":
                global.dev = !global.dev;
            break;
        }
    }
}

// Un ready the game
if(global.game_ready){
    global.game_ready = false;
    global.game = NULL;
}

