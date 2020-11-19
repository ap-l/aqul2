/// @description Create/kill citizens

// determine crime rate and kill citizens from crime.
if pop >= 10
{
	crime += 1
}
else if pop < 10 && crime > 0
{
	crime --;
}
pop -= crime;



for (var i = floor(pop/2); i > 0; i--)
{
	randomize()
	if irandom(8-floor(econ/10)) < 4
	{
		pop += 1;
		econ --;
	}
}
econ += ceil(pop-crime/(floor(econ/4)))
alarm[0] = 1400