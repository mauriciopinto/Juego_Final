///Metodo Gravedad y Movimiento con colision

verticalSpeed += grv;


//horizontal collision
if (place_meeting(x+horizontalSpeed,y,obj_ground)){
	while(!place_meeting(x+sign(horizontalSpeed),y,obj_ground)){
		x= x +sign(horizontalSpeed);
	}
	horizontalSpeed=0;
}

x+=horizontalSpeed;

//vertical collision
if (place_meeting(x,y+verticalSpeed,obj_ground)){
	while(!place_meeting(x,y+sign(verticalSpeed),obj_ground)){
		y= y +sign(verticalSpeed);
	}
	verticalSpeed=0;
}
y+=verticalSpeed;

