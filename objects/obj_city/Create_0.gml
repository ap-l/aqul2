/// @description Insert description here
// You can write your code in this editor
randomize()
depth = 70
cname = scr_namegen(irandom(1)+2)
image_speed = 0
pop = 6 // population. if it reaches 0 then the city will be destroyed
for(var i = pop; i > 0; i--)
{
	randomize();
	poparr[i][0] = scr_cng(irandom(1)+2); // pop array for name generation(each citizen has a unique name)
	poparr[i][1] = choose(0,1); // total number of employed citizens, greatly affects economy
}
show_debug_message(poparr)
econ = irandom(20) // economy. dictates how poor the population are. 
//if it is poor, people will leave and go to create new cities, thus increasing the economy of the current city. 
// range of economy is: 0 (destitute), 10 (meagre), 20 (stable), 30 (favourable), 40 (excellent)
crime = 0 // crime dictates how much control the law has, high crime will result in deaths
alarm[0] = 200
br = true
var f = collision_point(x+16,y+16,obj_forest,true,false)
if f != noone
{
	forest = true
	image_index = 5
	instance_destroy(f)
	
}
else
{
	forest = false	
}