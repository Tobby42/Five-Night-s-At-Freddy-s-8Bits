cooldown_hour += 1
if (cooldown_hour >= 3000) && (global.hour < 5)
{
	global.hour += 1
	cooldown_hour = 0
}
if (cooldown_hour >= 3000) && (global.hour == 5)
{
	global.minut += 1
	cooldown_hour = 0
	if (global.minut == 6)
	{
		global.minut = 0
		global.hour = 6
	}
}

cooldown_night += 1
if (cooldown_night == 5)
{	
	night = (random_range(10, 99))
	cooldown_night = 0
}


if (global.hour >= 6)
{
	win = 1
}
