/// @description Insert description here
// You can write your code in this editor
var icount = 0
tx = x-8
obj = 1 // 0 water, 1 ground, 2 mountain, 3 coast, 4 forest, 5 river, 6 forestriver, 7 coastriver
ty = y-8	
depth = 90
alarm[0] = 10
for(var i = 8; i > 0; i--)
{
			
	switch(i)
	{
		case 8:
		case 7:
		{
			tx += 8
			break;
		}
		case 6:
		case 5:
		{
			ty += 8
			break;
		}
		case 4:
		case 3:
		{
			tx -= 8
			break;
		}
		case 2:
		case 1:
		{
			ty -= 8
			break;
		}
	}
	//instance_create_depth(tx,ty,0,obj_tile)
	if !(collision_rectangle(x,y,tx,ty,obj_water,false,true))
	{
		icount++
		if irandom_range(0,20+4*icount) < 3
		{
			if (0 < tx < room_width) && (0 < ty < room_height)
			{
				instance_create_depth(tx,ty,0,obj_ground)	
			}
		}
	}
}