/// scr_dev_info

// Draw setup
draw_set_font(fnt_dev);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

// Local variables
var xx = 10, yy = 10;
var ys = 15;

// Draw the dim rectangle
draw_rectangle_dim(0, 0, view_wview[0], y_max, c_black, 0.8);

// Draw the information
draw_text(xx, yy, string(fps) + " DEVELOPER MODE (" + room_get_name(room) + ")");
yy += ys;

// Get inputs
var inputs = "";
if(global.touch){
    inputs += "Touch | ";
}
if(global.click){
    inputs += "Click | ";
}
draw_text(xx, yy, "Inputs: " + inputs);
yy += ys;

// Draw instances in room
draw_text(xx, yy, "Current Instances: " + string(instance_count));
yy += ys;

// Draw game properties
if(global.game != NULL){
    var text = "";
    if(global.game_ready){
        text = " (ready)"
    }
    draw_text(xx, yy, "Game: " + dev_game[global.game] + text);
    yy += ys;
}else{
    draw_text(xx, yy, "Game: Not selected.");
    yy += ys;
}
draw_text(xx, yy, "Game Difficulty: " + string(global.difficulty));
yy += ys;

// Get the Y max
y_max = yy + ys;
