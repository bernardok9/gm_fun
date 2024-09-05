// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function color_range(_range, _color){
	draw_self();
	draw_set_alpha(0.2);
	draw_set_color(_color);
	draw_circle(x, y, _range, false);
	draw_set_alpha(1);
}