/// @description Insert description here
// You can write your code in this editor

var i = 1/(view_hport[0]/display_get_height()) 
// the value which you have to devide the height of the display by to get 400
global.sidesize = display_get_width()/i - view_wport[0]
// the size of the black area to either side of the display
view_wport[0] = view_wport[0]+global.sidesize
window_set_size(view_wport[0],view_hport[0])
surface_resize(application_surface, view_wport[0], view_hport[0])

camera = camera_create();

var vm = matrix_build_lookat(x,y,-1,x,y,0,0,1,0);
var pm = matrix_build_projection_ortho(view_wport[0]/4,view_hport[0]/4,1,10000);

camera_set_view_mat(camera, vm);
camera_set_proj_mat(camera, pm);

view_camera[0] = camera

follow = obj_player;

