randomize()
depth = 65
alarm[0] = 200
agro = false
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
spd = 0.08
path_start(path,spd,path_action_stop,false)
