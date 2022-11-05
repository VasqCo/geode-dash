var jump = keyboard_check(vk_space) or mouse_check_button(mb_left);

grounded = !place_empty(x,y+vsp,ground);

if grounded and jump
{
	vsp = -jumpspd
}	

if !grounded
{
	if vsp < 6
	{
	vsp += grv;
	}
	y += vsp;
	
	image_angle -= rotspd;
	
}

if grounded
{
	image_angle = 0;
}

x += spd;

//death

if !place_empty(x+spd,y,kill_colider)
{
	
	die();
	
}

if !place_empty(x,y,spike_collider)
{
	
	die();
	
}
