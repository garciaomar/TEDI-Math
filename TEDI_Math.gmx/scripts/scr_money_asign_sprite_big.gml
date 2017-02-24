/// scr_money_asign_sprite_big

// Sprite Control
if(sprite == spr_null){
    switch(value){
        case 1:
            sprite = spr_peso_real_1;
        break;
        case 2:
            sprite = spr_peso_real_2;
        break;
        case 5:
            sprite = spr_peso_real_5;
        break;
        case 10:
            sprite = spr_peso_real_10;
        break;
    }
}else{
    visible = true;
}
