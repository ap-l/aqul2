/// @description Insert description here
// You can write your code in this editor
var c = collision_circle(x,y,12,obj_citizen,false,true)
var n = false
if c != noone && agro == true
{
	if collision_point(x,y,obj_citizen,true,true)
	{
		randomize()
		choose(instance_destroy(c),n = true)	
		if n == true
			{
			with(c)
			{
				instance_change(obj_bandit,true)
			}	
		}
	}
	mp_grid_path(global.lnd,path,x,y,c.x,c.y,true)
}
else
{
	mp_grid_path(global.lnd,path,x,y,sx,sy,false)
}
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
}

path_start(path,spd,path_action_stop,false)