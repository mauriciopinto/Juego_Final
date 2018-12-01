/// @description Insert description here
// You can write your code in this editor
 
if(hp<=0){
	
	with(instance_create_layer(x,y,layer,obj_ded)){
		direction=other.hitfrom;
		horizontalSpeed=lengthdir_x(3,direction);
		verticalSpeed=lengthdir_y(3,direction)-2;
		if(sign(horizontalSpeed)!=0) image_xscale= sign(horizontalSpeed);
	}
	
	
	instance_destroy();
}