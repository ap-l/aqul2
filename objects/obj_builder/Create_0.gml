/// @description Insert description here
// You can write your code in this editor
nx = 10*x
ny = 10*y
	for(var i = 0; i < instance_number(obj_city); i++)
	{
		cities[i] = instance_find(obj_city,i)
		show_debug_message(cities[i])
		if cities[i].x != x || cities[i].y != y
		{
			if cities[i].x < abs(x+nx) && cities[i].y < abs(y+ny)
			{
				//nx = cities[i].x
				//ny = cities[i].y
				ncity = cities[i]	
			}
		}
	}
	//ncity = instance_furthest(x,y,obj_city)
	if ds_list_find_index(global.roadlist,instance_nearest(x,y,obj_city).cname + ncity.cname) == -1
	{
		ds_list_add(global.roadlist,instance_nearest(x,y,obj_city).cname + ncity.cname)
		path = path_add()
		grid = mp_grid_create(min(x,ncity.x),min(y,ncity.y),abs(x-ncity.x) / global.gridsz + 1,abs(y-ncity.y) / global.gridsz + 1,global.gridsz,global.gridsz)
		mp_grid_add_instances(grid,obj_water,false)
		//mp_grid_add_instances(grid,obj_mountain,false)
		mp_grid_path(grid,path,x,y,ncity.x,ncity.y,false)
		alarm[0] = 200
		var inc = 1 / (path_get_length(path));
		var pos = 0;
		// Loop through every position along the path 1 pixel at a time
		while (pos < 1) 
		{
		  var px = path_get_x(path, pos);
		  var py = path_get_y(path, pos);
		  px = round(px / global.gridsz)  * global.gridsz;  // Round px to the nearest grid_width (for example if grid_width = 32, and px = 69 it px would become 64 because thats the nearest multiple of 32)
		  py = round(py / global.gridsz) * global.gridsz; // Round py to the nearest grid_height

		  // Create object if one doesn't already exist (important because this code will run many times for each grid position because there are multiple pixels along the path that fall into a single grid position)
		  if (!collision_point(px, py, obj_road, 0, 0)) 
		  {
		    instance_create_depth(px, py,-1, obj_road);
		  }
		  pos += inc;
		}
	}