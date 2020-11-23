/// @description Insert description here
// You can write your code in this editor


if (follow != noone)
{
x += (follow.x - x)/10
y += (follow.y - y)/10
}

var vm = matrix_build_lookat(x,y,-1000,x,y,0,0,1,0);

camera_set_view_mat(camera, vm);

if keyboard_check(ord("Q"))
{
	view_visible[0] = false
	view_enabled = false	
}
else
{
	view_visible[0] = true
	view_enabled = true		
}
