function scr_cng(argument0) {
	l = argument0
	name = "";
	oe = true
	for(var i = round(l/2);i>0;i--)
	{
		randomize()
		if oe == true
		{
			name += choose("do", "mi", "pa", "te", "ro", "wea", "ly", "e", "ni", "ho", "nie", "rue", "tai")
			oe = !oe
		}
		else if oe == false
		{
			name += choose("ny", "le", "lo", "ra", "ry", "dy", "si", "po", "mu", "noe")
			oe = !oe
		}
	}
	name += " "
	for(var i = l;i>0;i--)
	{
		randomize()
		if oe == true
		{
			name += choose("ana", "le", "po", "thu", "fy", "wo", "boa", "elo", "le", "ph", "n", "tr", "te")
			oe = !oe
		}
		else if oe == false
		{
			name += choose("di", "ni", "lo", "ba", "ra", "doro", "n", "ro", "mie", "ga")
			oe = !oe
		}
	}
	return(name)


}
