/// @description Insert description here
// You can write your code in this editor
/*
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
alarm[0] = 200