/// @description updatea camara

if(instance_exists(follow)){
	xTo = follow.x;
	yTo = follow.y;
}

x+=(xTo -x);
y+=(yTo -y);

x=clamp(x,view_w_half, room_width-view_h_half)

camera_set_view_pos(cam, x-view_w_half,y-view_h_half);