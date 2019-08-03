//Get player input
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);
key_shoot = keyboard_check_pressed(ord("Z"));


//Calculate movement
var move = key_right - key_left;
hsp = walksp * move;
vsp = vsp + grv;

//Set jump trigger condition
if (place_meeting(x,y+1,oWall))&&(key_jump){
	vsp = -8;
}

//Horizonal collision
if (place_meeting(x+hsp,y,oWall)){
	while(!place_meeting(x+sign(hsp),y,oWall)){
		x = x + sign(hsp);
	}
	//hsp = 0;
}
else{
	x = x + hsp;
}

//Vertical collisoin
if (place_meeting(x,y+vsp,oWall)){
	while(!place_meeting(x,y+sign(vsp),oWall)){
		y = y + sign(vsp);
	}
	vsp = 0;
}
else{
	y = y + vsp;
}

//Shooting
if (key_shoot)&&(instance_number(oBullet) < 4){
	instance_create_layer(x,y+5,layer,oBullet);
}

//Directions
if (hsp != 0) image_xscale = sign(hsp);// look out for sign-0 error


//Animation
if (!place_meeting(x,y+1,oWall)){
	image_speed = 1;
	if (vsp > 0) sprite_index = sPlayerFall; else sprite_index = sPlayerJump;
}
else if (hsp != 0){
	image_speed = 1;
	sprite_index = sPlayerRun;
}
else{
	sprite_index = sPlayer;
}


