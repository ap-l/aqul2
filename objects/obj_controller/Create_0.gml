/// @description Insert description here
// You can write your code in this editor
randomize()
rot = 0;
audio_play_sound(snd_gns,1,true)
global.gridsz = 8
global.roadlist = ds_list_create()
global.lnd = mp_grid_create(0,0,128,96,8,8)
global.bandits[0] = 0;
alarm[0] = 5
alarm[1] = 120
for(var w = room_width; w >= 0; w -= 8)
{
	for (var h = room_height; h >= 0; h -= 8)
	{
		var r = (irandom(sqr(point_distance(w,h,room_width/2,room_height/2))/4096*2 )) //((w-room_width/2)+1)*((h-room_height/2)+1)
		if (r < 2)
		{
			instance_create_depth(w,h,0,obj_mountain)
		}
	}
}