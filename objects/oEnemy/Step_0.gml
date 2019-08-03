
vsp = vsp + grv;

//check for horizonal collision
if (place_meeting(x+hsp,y,oWall)){
	while(!place_meeting(x+sign(hsp),y,oWall)){
		x = x + sign(hsp);
	}
	hsp = -hsp;
}
else{
	x = x + hsp;
}

//check for vertical collisoin
if (place_meeting(x,y+vsp,oWall)){
	while(!place_meeting(x,y+sign(vsp),oWall)){
		y = y + sign(vsp);
	}
	vsp = 0;
}
else{
	y = y + vsp;
}

//turn directions
if (hsp != 0) image_xscale = sign(hsp);// look out for sign-0 error

//animation


if (!place_meeting(x,y+1,oWall)){
	image_speed = 1;
	if (vsp > 0) sprite_index = sEnemyFall; else sprite_index = sEnemyJump;
	
}
else if (hsp != 0){
	image_speed = 1;
	sprite_index = sEnemyRun;
	if (!place_meeting(x+sign(hsp),y+1,oWall)) hsp = -hsp;
}
else{
	sprite_index = sEnemy;
}

