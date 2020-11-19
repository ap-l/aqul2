function scr_namegen(argument0) {
	l = argument0
	name = "City of "
	oe = true
	for(var i = l;i>0;i--)
	{
		randomize()
		if oe == true
		{
			name += choose("an", "yll", "p", "th", "fyr", "w", "l", "ell", "enl", "ph", "n", "tr", "t")
			oe = !oe
		}
		else if oe == false
		{
			name += choose("an", "in", "ol", "er", "yr", "eed", "ire", "or", "um", "oen")
			oe = !oe
		}
	}
	return(name)


}
