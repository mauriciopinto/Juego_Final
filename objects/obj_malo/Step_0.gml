/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (place_meeting(x+horizontalSpeed,y,obj_ground))
{horizontalSpeed= -horizontalSpeed;}
if(collision_circle(x,y,140,obj_batman,false,true)){
	move_towards_point(obj_batman.x,y,1);
}