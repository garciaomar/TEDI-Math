/// scr_money02_control

// Local variables
var i, coins, trinkets;
var bank_sprite;

// Prepare the number of money and trinkets in room
if(global.game_ready == false){
    // Find the object instances in room
    area = 0; bank = 0
    switch(global.difficulty){
        case 1:
            coins = irandom_range(4, 6);
            trinkets = irandom_range(1, 3);
            bank_sprite = spr_bank_pig;
        break;
        case 2:
            coins = irandom_range(4, 6);
            trinkets = irandom_range(3, 5);
            bank_sprite = spr_bank_pig;
        break;
        case 3:
            coins = irandom_range(3, 6);
            trinkets = irandom_range(3, 6);
            bank_sprite = spr_bank_pig;
        break;
    }  
    
    // Find the money area to place the objects
    area = object_find(obj_money_rand_area, "control");
    bank = object_find(obj_bank, "bank");
    
    // Check if the objects are identified
    if(instance_exists(area) && instance_exists(bank)){
        // Set the number of coins & trinkets to the area
        area.coins = coins;
        area.trinkets = trinkets;
        // Set the sprite to the bank
        bank.sprite = bank_sprite;
        // Se the game to ready
        global.game_ready = true;
    }
}

// When the game is ready
if(global.game_ready){
    // Check if WIN
    var count = 0;
    for(i = 0; i < instance_number(obj_money); i++){
        var coin = instance_find(obj_money, i);
        if(coin.value > 0){
            count++;
        }
    }
    if(count <= 0 && area.created){
        global.game_ready = false;
        room_restart();
    }
}
