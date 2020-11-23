/// @description Create/kill citizens

// determine crime rate and kill citizens from crime. also set city sprite
if pop >= 50
{
	image_index = 4
	crime = 50
}
if pop >= 30
{
	image_index = 3	
	crime = 30
}
else if pop >= 20
{
	image_index = 2	
	crime = 15
}
if pop >= 10
{
	image_index = 1
	crime = 2
}
else if pop < 10 && crime > 0
{
	if forest == true
	{
		image_index = 5
	}
	else
	{
		image_index = 0
		crime --;
	}
}
for(var o = crime; o > 0; o--)
{
	global.walkers[instance_number(obj_citizen)] = array_get(poparr,array_length(poparr)-1)
	array_resize(poparr,array_length(poparr)-2)
	instance_create_depth(x,y,0,obj_citizen)
	global.bandits[instance_number(obj_bandit)] = array_get(poparr,array_length(poparr)-1)
	array_resize(poparr,array_length(poparr)-2)
	instance_create_depth(x,y,0,obj_bandit)
	show_debug_message("xxxxxxxxxx citizens xxxxxxxxx")
	show_debug_message(poparr)
	show_debug_message("xxxxxxxxxx bandits xxxxxxxxx")
	show_debug_message(global.bandits)
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
pop = array_length(poparr)-1
show_debug_message(array_length(poparr)-1)
alarm[0] = 1400