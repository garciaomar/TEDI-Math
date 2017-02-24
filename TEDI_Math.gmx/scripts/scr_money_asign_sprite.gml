/// scr_money_asign_sprite

// Sprite Control
if(sprite == spr_null){
    switch(value){
        case 1:
            sprite = spr_peso1;
        break;
        case 2:
            sprite = spr_peso2;
        break;
        case 5:
            sprite = spr_peso5;
        break;
        case 10:
            sprite = spr_peso10;
        break;
        case TRINKET:
            var trinket = irandom_range(0, array_height_2d(global.trinket) - 1);
            if(global.trinket[trinket, ROTABLE]){
                image_angle = random_range(0, 364);
            }
            if(global.trinket[trinket, COLORABLE]){
                color = color_choose();
            }
            sprite = global.trinket[trinket, SPRITE];
        break;
    }
}else{
    visible = true;
}
