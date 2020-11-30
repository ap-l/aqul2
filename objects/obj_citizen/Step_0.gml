/// @description Insert description here
// You can write your code in this editorpathv
var b = collision_circle(x,y,14,obj_bandit,false,true)//check if they can see bandit
if b != noone // if they can
{
	var bp = mp_grid_path(global.lnd,path,x,y,4*-b.x,4*-b.y,true) //choose point in opposite direction
	while(bp == false)// if there is no valid path, choose new goal
	{
		b++;
		bp = mp_grid_path(global.lnd,path,x,y,4*-b.x,4*-b.y,true)
	}
}

if x == sx && y == sy
{
	randomize()
	if irandom(2) == 2 // 1 in 3 chance to create a house
	{
		var t = instance_create_depth(round(x/global.gridsz)*global.gridsz,round(y/global.gridsz)*global.gridsz,-1,obj_house);
		string_delete(name,string_length(name),round(string_length(name)/2))
		t.cname += name + choose(" homestead", " farm", " residence", " camp", " estate", " dwelling");
		instance_destroy();
	}
	else
	{
		sx = irandom(x+128)-64
		sy = irandom(y+128)-64
		mp_grid_path(global.lnd,path,x,y,sx,sy,false)
		while(mp_grid_path(global.lnd,path,x,y,sx,sy,false) == false)// if there is no valid path, choose new goal
		{
			randomize()
			sx = irandom(x+128)-64
			sy = irandom(y+128)-64
		}
	}
}
path_start(path,spd,path_action_stop,false)