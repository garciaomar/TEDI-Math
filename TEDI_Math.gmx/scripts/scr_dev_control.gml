/// scr_dev_control

// Toggle DEVELOPER mode
if(global.dev_key){
    global.dev = !global.dev;
}

if(global.dev){
    // End Simulation
    if(keyboard_check_pressed(vk_escape)){
        game_end();
    }
    
    // Restart Simulation
    if(keyboard_check_pressed(vk_backspace)){
        game_restart();
    }
}
