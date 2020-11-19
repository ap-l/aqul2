/// @description Insert description here
// You can write your code in this editor
draw_self()
draw_path(path,0,0,true)
//draw_line_width_color(path_get_point_x(path,0), path_get_point_y(path,0), path_get_point_x(path,round(path_get_length(path)/8)), path_get_point_y(path,round(path_get_length(path)/8)), 2,make_color_rgb(100,50,0),make_color_rgb(130,70,0))
if keyboard_check(ord("R"))
{
	mp_grid_draw(grid)
}