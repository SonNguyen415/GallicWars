// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function parse_to_string(_n){
	ret = string(_n);
	if(_n < 10) {
		ret = "000" + ret;
	} else if(_n < 100) {
		ret = "00" + ret;
	} else if(_n < 1000) {
		ret = "0" + ret;
	}
	show_debug_message(ret);
	return ret;
}