/// @description Insert description here
// You can write your code in this editorpath
if x == sx && y == sy
{
	var t = instance_create_depth(round(x/global.gridsz)*global.gridsz,round(y/global.gridsz)*global.gridsz,-1,obj_house);
	string_delete(name,string_length(name),round(string_length(name)/2))
	t.cname += name + choose(" homestead", " farm", " residence", " camp", " estate", " dwelling");
	instance_destroy();
}
