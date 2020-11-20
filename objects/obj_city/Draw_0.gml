/// @description Insert description here
// You can write your code in this editor
draw_self()
var o = floor(econ/10)
switch(o)
{
	case 0:
	{
		var i = "destitute"
		break;	
	}
	case 1:
	{
		var i = "poor"
		break;	
	}
	case 2:
	{
			var i = "stable"
		break;	
	}
	case 3:
	{
			var i = "favourable"
		break;	
	}
	case 4:
	{
			var i = "excellent"
		break;	
	}
	default:
	{
		var i = "excellent"
	}
}
	
draw_text_transformed((x+12)-string_length(cname)/2,y+2,cname,0.2,0.2,0)
draw_text_transformed((x+12),y+6,"population is " + string(pop),0.2,0.2,0)
draw_text_transformed((x+12),y+4,"economy is " + i,0.2,0.2,0)