/// @description
a = clamp(a + (fade * 0.05),0,1);

if (a == 1) {
	room_goto(room_selection)
	fade = -1;
}

if (a == 0) && (fade == -1) {
	instance_destroy();
}

draw_set_color(c_black);
draw_set_alpha(a);
draw_rectangle(
	0,
	0,
	384,
	216,
	0
)
draw_set_alpha(1);
draw_set_color(c_white)