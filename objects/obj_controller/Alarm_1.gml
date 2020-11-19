/// @description Insert description here
// You can write your code in this editor
var sp = instance_nearest(x,y,obj_ground)
instance_create_depth(sp.x,sp.y,-5,obj_player)
instance_create_depth(x,y,0,obj_camera)
mp_grid_add_instances(global.lnd,obj_water,false)