/// scr_money_play_sound

// Check if the sound is already playing
var sound_check = !audio_is_playing(sound);

if(sound != NULL && sound_check && hover && global.click){
    audio_play(sound, 5, false);
}
