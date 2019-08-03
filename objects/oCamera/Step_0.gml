///@description Update camera

//Update destination
if (instance_exists(follow)){
	xTo = follow.x;
	yTo = follow.y;
}

//Update object position
//x += (xTo - x)/32; //more flexible
//y += (yTo - y)/32;
x = xTo;//this method is a little bit inflexible
y = yTo;

x = clamp(x,view_w_half,room_width-view_w_half);
y = clamp(y,view_h_half,room_height-view_h_half);

//Update camera view
camera_set_view_pos(cam,x-view_w_half,y-view_h_half);//place the player in the middle