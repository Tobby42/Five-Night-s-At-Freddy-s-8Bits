if (batt_doorL == 1)
{
	if (keyboard_check_released(ord("Q")))
	{
		if (openL)
		{
			image_index = 0
			openL = false
			oBattery_usage.batt_usage+=1
		}
		else
		{
			image_index = 1
			openL = true
			oBattery_usage.batt_usage-=1
		}
	}
}
else
{
	image_index = 1
	openL = true
}