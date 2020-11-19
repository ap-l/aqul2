/// @description Insert description here
// You can write your code in this editor
for(var w = room_width; w >= 0; w -= 8)
{
	for (var h = room_height; h >= 0; h -= 8)
	{
		if !collision_point(w,h,all,false,true)
		{
			instance_create_depth(w,h,0,obj_water)
		}
	}
}