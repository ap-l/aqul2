/// @description Insert description here
// You can write your code in this editor
tx = x-8
ty = y-8	
for(var i = 8; i > 0; i--)
{
			
	switch(i)
	{
		case 8:
		case 7:
		{
			tx += 8
			break;
		}
		case 6:
		case 5:
		{
			ty += 8
			break;
		}
		case 4:
		case 3:
		{
			tx -= 8
			break;
		}
		case 2:
		case 1:
		{
			ty -= 8
			break;
		}
	}
	instance_create_depth(tx,ty,0,obj_ground)	
}