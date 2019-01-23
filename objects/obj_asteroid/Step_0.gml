if (room == rm_space) {
x += xVel;
y += yVel;
ang += aVel;
age += 1;
image_angle = ang;

rednessFloor = 240*(1-hp/maxHp);
redness = floor(redness/rednessDecay);
image_blend = make_color_hsv(0,min(redness+rednessFloor,255),255);

if (hp > 0) {
	image_alpha = min(age/30,1);
} else {
	image_alpha = max(dyingTime/5,0);
	if (dyingTime <= 0) {
		dead = true;
	}
	dyingTime -= 1;
}

if (x < 0) {
	x = 0;
	xVel *= -1;
}
if (x > room_width) {
	x = room_width;
	xVel *= -1;
}

if (y < 0) {
	y = 0;
	yVel *= -1;
}
if (y > room_height) {
	y = room_height;
	yVel *= -1;
}
}

if (room == rm_menu) {
	image_alpha = 0;
}