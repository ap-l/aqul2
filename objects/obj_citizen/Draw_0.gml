/// @description Insert description here
// You can write your code in this editor
draw_self()
if collision_circle(x,y,40,obj_player,false,true)
{
	draw_text_transformed(x-string_length(name)/2,y-4,name,0.2,0.2,0)
}