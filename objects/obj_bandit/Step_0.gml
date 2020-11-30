/// @description Insert description here
// You can write your code in this editor
var c = collision_circle(x,y,12,obj_citizen,false,true)
var hc = collision_circle(x,y,24,obj_hideout,false,false)
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
else if hc != noone
{
	mp_grid_path(global.lnd,path,x,y,hc.x,hc.y,true)
}
else
{
	mp_grid_path(global.lnd,path,x,y,sx,sy,false)
}
if x == sx && y == sy
{
	show_debug_message("hideout1")
	randomize()
	if irandom(2) == 2 // 1 in 3 chance to create a hideout
	{
		show_debug_message("hideout2")
		var h = instance_create_depth(x,y,50,obj_hideout)
		with(h)
		{
			poparr[0] = cname	
		}
		instance_destroy();
	}
	else
	{
		sx = irandom(x+128)-64
		sy = irandom(y+128)-64
		mp_grid_path(global.lnd,path,x,y,sx,sy,false)
		while(mp_grid_path(global.lnd,path,x,y,sx,sy,false) == false)// if there is no valid path, choose new goal
		{
			randomize()
			sx = irandom(x+128)-64
			sy = irandom(y+128)-64
		}
	}
}
path_start(path,spd,path_action_stop,false)