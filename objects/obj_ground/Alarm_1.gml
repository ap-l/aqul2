/// @description Insert description here
// You can write your code in this editor
if collision_rectangle(x+8,y,x-8,y,obj_river,false,false)
{
	switch(obj)
	{
		case 1:
		{
			if !collision_point(x,y,obj_forest,true,true)
			{
			sprite_index = choose(spr_river,spr_river2,spr_river3)
			obj = 5
			}
			break;
		}
		case 3:
		{
			sprite_index = spr_coastriver
			obj = 7
			break;
		}
		case 4:
		{
			sprite_index = spr_forestriver
			obj = 6
			break;
		}
	}
}
alarm[2] = 400