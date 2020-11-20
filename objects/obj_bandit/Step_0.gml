/// @description Insert description here
// You can write your code in this editor
if x == sx && y == sy
{
	randomize()
	sx = irandom(room_width-20)+10
	sy = irandom(room_height-20)+10
	mp_grid_path(global.lnd,path,x,y,sx,sy,false)
	while(mp_grid_path(global.lnd,path,x,y,sx,sy,false) == false)
	{
		randomize()
		sx = irandom(room_width-20)+10
		sy = irandom(room_height-20)+10
	}
	path_start(path,spd,path_action_stop,false)
}