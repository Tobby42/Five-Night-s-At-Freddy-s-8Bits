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

night = (random_range(10, 99))

if (global.hour >= 6)
{
	win = 1
}
