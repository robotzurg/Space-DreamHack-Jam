if keyboard_check_pressed(vk_f11) {
	if window_get_fullscreen() = false {
		window_set_fullscreen(true);
		zoom++;
		if(zoom>max_zoom) {
	    zoom=1;
		}
		surface_resize(application_surface,ideal_width*2,ideal_height*2);
		//window_set_size(ideal_width*zoom,ideal_height*zoom);
		alarm[0]=1;
	} else {
		window_set_fullscreen(false);
		window_set_size(ideal_width,ideal_height);
		zoom--;
		if(zoom>max_zoom) {
	    zoom=1;
		}
		surface_resize(application_surface,ideal_width*2,ideal_height*2);
		alarm[0] = 1;
	}
}
/*if zoom != 1.5 {
	zoom += 0.01
}*/

//Dynamically adjust camera
if global.screenshake = true {
	view_w = ideal_width*zoom+random_range(-9,9);
	view_h = ideal_height*zoom+random_range(-9,9);
	if alarm_done = false {
		alarm[1] = 6;
		alarm_done = true;
	}
} else {
	view_w = ideal_width*zoom
	view_h = ideal_height*zoom;
}
