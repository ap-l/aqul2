randomize()
depth = 65
alarm[0] = 200
agro = false
sx = irandom(room_width-20)+10
sy = irandom(room_height-20)+10
path = path_add()
mp_grid_path(global.lnd,path,x,y,sx,sy,false)
while(mp_grid_path(global.lnd,path,x,y,sx,sy,false) == false)
{
	randomize()
	sx = irandom(room_width-20)+10
	sy = irandom(room_height-20)+10
}
spd = 0.30
path_start(path,spd,path_action_stop,false)
