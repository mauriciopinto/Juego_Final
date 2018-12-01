event_inherited();//hereda gravedad de padre
counter++;
object_set_solid(obj_batman,1);
///Metodo movimiento batman
key_right = keyboard_check(ord("D"));
key_left = keyboard_check(ord("A"));
key_jump = keyboard_check_pressed(ord("W"));


//espera inputs de movimiento
var move = key_right - key_left;

horizontalSpeed= move*walkspeed;

if (place_meeting(x,y+1,obj_ground)) && (key_jump){//jump
	verticalSpeed = -6;
}

if(keyboard_check_pressed(vk_shift)){//correr
	walkspeed = 7;
}

if(keyboard_check_released(vk_shift)){
	walkspeed = 3;
}
 
//animaciones
if(y = yprevious){
	if(shoot == 1){
		sprite_index = spr_batman;
	}
	else if(shoot == 0){
		sprite_index = spr_namtabWalk;
	}
}
//Derecha
if((keyboard_check(vk_shift)) && (x > xprevious) && (y = yprevious)) {
	sprite_index = spr_batmanRunning;
	shoot = 1;
}
else if((!keyboard_check(vk_shift)) && (x > xprevious) && (y = yprevious)){
	sprite_index = spr_batmanWalk;
	shoot = 1;
}
else if((y < yprevious) && (x > xprevious) || (y < yprevious) && (x = xprevious)){
	sprite_index = spr_batmanJump;
	shoot = 1;
}
else if((y > yprevious) && (x > xprevious) || (y > yprevious) && (x = xprevious)){
	sprite_index = spr_batmanFalling;
	shoot = 1;
}
else if(hp <= 0){
	sprite_index = spr_batmanDeath;
	walkspeed = 0;
}
//Izquierda
if((keyboard_check(vk_shift)) && (x < xprevious) && (y = yprevious)) {
	sprite_index = spr_namtabRunning;
	shoot = 0;
}
else if((!keyboard_check(vk_shift)) && (x < xprevious) && (y = yprevious)){
	sprite_index = spr_namtabWalk;
	shoot = 0;
}
else if((y < yprevious) && (x < xprevious)){
	sprite_index = spr_namtabJump;
	shoot = 0;
}
else if((y > yprevious) && (x < xprevious)){
	sprite_index = spr_namtabFalling;
	shoot = 0;
}

//batarang
firingDelay -= 1;
if (keyboard_check(vk_space)) && (firingDelay<0){
	firingDelay = 5;
		instance_create_layer(x,y,"balas",obj_batarang)
		with(obj_batarang){
			if(obj_batman.shoot == 1){
				move_towards_point(10000,y,10);
			}
			else if (obj_batman.shoot == 0){
				move_towards_point(-10000,y,10);
			}
		}
}
if(collision_circle(x,y,10,obj_spikes,true,true)){
	hp -=3;
}