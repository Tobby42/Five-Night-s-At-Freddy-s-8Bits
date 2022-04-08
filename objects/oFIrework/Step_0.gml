image_xscale = 4
image_yscale = 4
if (image_index == image_number-1)
{
	instance_create_layer(random_range(0, room_width-30), random_range(0, room_height-30), "win_thing", oFIrework)
	instance_destroy(self)
}