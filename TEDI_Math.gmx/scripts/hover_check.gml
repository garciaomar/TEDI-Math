/// hover_check(x1, y1, x2, y2)

// Arguments
var x1 = argument0;
var y1 = argument1;
var x2 = argument2;
var y2 = argument3;

// Local variables
var hover = false;
var mx = mouse_x;
var my = mouse_y;

// Check for hover
if(mx > x1 && mx <= x2 && my > y1 && my <= y2){
    hover = true;
}

return hover;
