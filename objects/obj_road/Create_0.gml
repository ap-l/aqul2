/// @description Insert description here
// You can write your code in this editor
spr = ds_list_create()
if collision_rectangle_list(x-8,y-8,x+8,y+8,obj_road,false,true,spr,false) > 2
{
	instance_change(obj_house,true)	
}
else if ds_list_size(spr) == 2
{
	//r1 = ds_list_find_value(spr,1)
	//r2 = ds_list_find_value(spr,2)
}