/// @description
if keyboard_check_pressed(vk_escape) {
	game_end();
}
if keyboard_check_pressed(vk_f11) {
	if window_get_fullscreen() = true {
	window_set_fullscreen(false);
	window_set_size(384*3,216*3);
	surface_resize(application_surface,384*3,216*3);
	alarm[0] = 1;
	} else {
		window_set_fullscreen(true);
	}
}