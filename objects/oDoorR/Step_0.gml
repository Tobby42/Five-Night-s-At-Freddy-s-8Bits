if (batt_doorR == 1)
{
	if (keyboard_check_released(ord("D")))
	{
		if (openR)
		{
			image_index = 0
			openR = false
			oBattery_usage.batt_usage+=1
		}
		else
		{
			image_index = 1
			openR = true
			oBattery_usage.batt_usage-=1
		}
	}
}
else
{
	image_index = 1
	openR = true
}