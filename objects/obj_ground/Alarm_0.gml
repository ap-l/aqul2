/// @description Insert description here
// You can write your code in this editor
randomize()
if collision_rectangle(x+8,y+8,x-8,y-8,obj_water,false,false)  
{
	if collision_rectangle(x+8,y+8,x-8,y-8,obj_mountain,false,false)
	{
		sprite_index = choose(spr_ground, spr_ground, spr_ground, spr_ground, spr_river, spr_river2, spr_river3, spr_river4)
		if sprite_index = spr_river
		{
			instance_create_depth(x,y,0,obj_river)
			obj = 5	
		}
	}
	else
	{
		sprite_index = choose(spr_ground, spr_coast)
		if sprite_index = spr_coast
		{
			obj = 3	
		}
	}
}

if (!collision_rectangle(x,y,x,y,obj_mountain,false,false)) 
{
	if (!collision_rectangle(x+8,y+8,x-8,y-8,obj_water,false,false))
		sprite_index = choose(spr_ground, spr_ground, spr_ground, spr_ground, spr_forest, spr_river,spr_river)
		if sprite_index = spr_forest
		{
			obj = 4
			instance_create_depth(x,y,1,obj_forest)
		}	
		if sprite_index = spr_river
		{
			sprite_index = choose(spr_river, spr_river2, spr_river3, spr_river4)
			obj = 5
		}
}
alarm[1] = 5