/// @description Create/kill citizens

// determine crime rate and kill citizens from crime. also set city sprite
if pop >= 30
{
	image_index = 3	
	crime += 1
}
else if pop >= 20
{
	image_index = 2	
	crime += 1
}
else if pop >= 10
{
	image_index = 1
	crime += 1
}
else if pop < 10 && crime > 0
{
	image_index = 0
	crime --;
}
for(var o = crime; o > 0; o--)
{
	var sx = irandom(room_width-20)+10
	var sy = irandom(room_height-20)+10
	while(collision_point(sx,sy,obj_water,false,false) != noone)
	{
		randomize()
		var sx = irandom(room_width-20)+10
		var sy = irandom(room_height-20)+10
	}
	var t = irandom(array_length(poparr))
	poparr[t][0] = "noone"
	poparr[t][1] = 0
	instance_create_depth(sx,sy,0,obj_bandit)
	if irandom(2) == 2
	{
		crime --;	
	}
}


for (var i = floor(pop/2); i > 0; i--)
{
	randomize()
	if irandom(8-floor(econ/10)) < 4
	{
		poparr[array_length(poparr)+1][0] = scr_cng(irandom(1)+2);
		econ --;
	}
}
econ += ceil((pop-crime*irandom(2)/(floor(econ/4)))/4)
pop = array_length(poparr)
show_debug_message(array_length(poparr))
alarm[0] = 1400