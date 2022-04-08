time_win += 1
if (time_win >= 3)
{
	time_win = 0
}
var particle = 0

if (time_win == 0) && (self.win_boss == 1)
{
	particle = instance_create_layer(random_range(1, 1112), 1, "win_thing", oWin_thing)
	particle.image_blend = make_colour_hsv(random_range(0, 255),random_range(0, 255),random_range(0, 255))
}

image_angle += random_range(1, 10) 

if (y >= 544) && win_boss == 0
{
	instance_destroy(self)
}
if (win_boss == 0)
{
	y += 1
}