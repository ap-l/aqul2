/// @description Insert description here
// You can write your code in this editor
randomize()
cname = scr_namegen(irandom(1)+2)
pop = 6 // population. if it reaches 0 then the city will be destroyed
econ = 20 // economy. dictates how poor the population are. 
//if it is poor, people will leave and go to create new cities, thus increasing the economy of the current city. 
// range of economy is: 0 (destitute), 10 (meagre), 20 (stable), 30 (favourable), 40 (excellent)
employ = 0 // total number of emplyed citizens, greatly affects economy
crime = 0 // crime dictates how much control the law has, high crime will result in deaths
alarm[0] = 200
br = true