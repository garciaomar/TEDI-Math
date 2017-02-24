//// draw_rectangle_dim(x1, y1, x2, y2, color, alpha)

// Arguments
var x1 = argument0;
var y1 = argument1;
var x2 = argument2;
var y2 = argument3;
var color = argument4;
var alpha = argument5;

// Local variables
var last_color = draw_get_color();
var last_alpha = draw_get_alpha();

// Draw the dim rectangle
draw_set_alpha(alpha);
draw_set_color(color);
draw_rectangle(x1, y1, x2, y2, false);

// Return to the last used draw settings
draw_set_alpha(last_alpha);
draw_set_color(last_color);
