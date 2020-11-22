///Movement and Collision
var h = (keyboard_check(vk_right) - keyboard_check(vk_left)+(keyboard_check(ord("D")) - keyboard_check(ord("A"))));
var v = (keyboard_check(vk_down) - keyboard_check(vk_up)+(keyboard_check(ord("S")) - keyboard_check(ord("W"))));

var spd = sqrt(vx * vx + vy * vy);
if h == 0 && v == 0 {
    // deaccelerate when not moving
    if spd <= nd {
        vx = 0;
        vy = 0;
    } else {
        vx -= vx / spd * nd;
        vy -= vy / spd * nd;
    }
} else {
    if vx * h + vy * v < 0 {
        // skid
        if spd <= sd {
            vx = 0;
            vy = 0;
        } else {
            vx -= vx / spd * sd;
            vy -= vy / spd * sd;
        }
    } else {
        // accelerate
        vx += h * acc;
        vy += v * acc;
        spd = sqrt(vx * vx + vy * vy);
        if spd > mv {
            vx = vx / spd * mv;
            vy = vy / spd * mv;
        }
    }
}

// Change the below to have some collision in it
if (x+vx < room_width) && (y+vy < room_height)
{
	x += vx;
	y += vy;
}
else if collision_point(x+vx,y+vy,obj_water,false,false) or collision_point(x+vx,y+vy,obj_water,false,false)
{
	x += vx/4;
	y += vy/4;
}

if keyboard_check_pressed(ord("E"))
{
	instance_create_depth((round(x/16)*16)-12,(round(y/16)*16)-12,70,obj_city)
	audio_play_sound(snd_citybuilt,1,false);

}