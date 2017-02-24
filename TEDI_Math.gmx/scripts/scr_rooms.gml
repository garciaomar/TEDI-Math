/// scr_rooms

switch(room){
    case rm_setup:
        room_goto(rm_menu);
    break;
    case rm_menu:
        scr_menu_control();
    break;
    case rm_money0:
        scr_money_control();
    break;
    case rm_money00:
        scr_money00_control();
    break;
    case rm_money01:
    break;
    case rm_money02:
        scr_money02_control();
    break;
}
