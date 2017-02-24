/// scr_money_00_control

// Local variables
var i;

// Prepare the object localization
if(global.game_ready == false){
    // Find the object instances in room
    foward = 0; back = 0; coin = 0; lbl_pesos = 0;
    for(i = 0; i < instance_number(obj_button); i++){
        var btn = instance_find(obj_button, i);
        if(btn.tag == "foward"){
            foward = btn;
        }
        if(btn.tag == "back"){
            back = btn;
        }
    }
    for(i = 0; i < instance_number(obj_money); i++){
        var m = instance_find(obj_money, i);
        if(m.tag == "control"){
            coin = m;
        }
    }
    lbl_pesos = object_find(obj_label, "pesos");
    if(instance_exists(foward) && instance_exists(back) && instance_exists(coin) && instance_exists(lbl_pesos)){
        global.game_ready = true;
        current = 0;
    }
}

// Run the gmae
if(global.game_ready){
    if(foward.pressed){ // If the user presses the "next coin button"
        var next = current + 1;
        if(next <= array_height_2d(global.coin) - 1){
            current = next;   
        }else{
            current = 0;
        }
        coin.sprite = spr_null;
        coin.value = global.coin[current, VALUE];
    }
    if(back.pressed){ //If the user presses the "previous coin button"
        var previous = current - 1;
        if(previous >= 0){
            current = previous;
        }else{
            current = array_height_2d(global.coin) - 1;
        }
        coin.sprite = spr_null;
        coin.value = global.coin[current, VALUE]
    }
    var str1 = global.money[current, NAME];
    var str2 = string(global.money[current, VALUE]);
    lbl_pesos.text[0, TEXT] = str1 + " = $" + str2 + ".00 pesos";
}
