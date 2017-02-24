/// scr_setup

// Create a random seed
randomize();

// Game Variables
global.difficulty = 1;
global.game = NULL;
global.game_ready = false;
global.game_waiting = false;

// Load database
scr_money_database();
scr_coins_database();
scr_trinkets_database();

// DEVELOPER Global Variables
global.dev = false; 
