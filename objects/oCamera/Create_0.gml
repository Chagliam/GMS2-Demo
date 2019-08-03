///@description Set up camera

cam = view_camera[0];
follow = oPlayer;
view_w_half = camera_get_view_width(cam)*0.5;
view_h_half = camera_get_view_height(cam)*0.5;
xTo = xstart;// or you can set two vars whose value equal to follow's x and y in the step 
yTo = ystart;
