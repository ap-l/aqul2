/// @description Insert description here
// You can write your code in this editor
randomize()
sx = irandom(x+128)-64
sy = irandom(y+128)-64
path = path_add()
mp_grid_path(global.lnd,path,x,y,sx,sy,false)
while(mp_grid_path(global.lnd,path,x,y,sx,sy,false) == false)
{
	randomize()
	sx = irandom(x+128)-64
	sy = irandom(y+128)-64
}
spd = 0.06
//alarm[0] = 10
name = "";
path_start(path,spd,path_action_stop,false)
