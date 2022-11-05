#macro view view_camera[0]
camera_set_view_size(view, view_width, view_height)

if instance_exists(rock)
{
	var _x = (rock.x - view_width/2)+88
	var _y = (rock.y - view_height/2)-32
	
}

if instance_exists(dedrock)
{
	var _x = (deadx - (view_width/2)+88) + random_range(shakespd,-shakespd)
	var _y = (deady - (view_height/2)-32) + random_range(shakespd,-shakespd)
	if shakespd > 0
	{
		shakespd -= 0.25
	}
}

camera_set_view_pos(view,_x,_y)
