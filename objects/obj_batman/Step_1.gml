/// @description Insert description here
// You can write your code in this editor

if(hp<=0){
	walkspeed = 0;
	audio_stop_all();
	timer = clamp(timer -0.05, 0, 1)
	if(timer == 0){
		audio_play_sound(snd_gameover, 1, 1);
		room_goto(rm_gameover);
	}
}