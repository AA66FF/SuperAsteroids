if (room == rm_space) {
	image_alpha = 1;
	x += xVel;
	y += yVel;
	image_angle = radtodeg(angle);
}

if (room == rm_menu) {
	image_alpha = 0;
}
