if (room == rm_space) {
image_alpha = 1;
diff = [obj_ship.x-x,obj_ship.y-y];
angleToShip = getAngle(-diff[0],diff[1]);
acc = [0,-0.1];
acc = rotate(acc,angleToShip);

xAcc += acc[0];
yAcc += acc[1];
xVel *= 0.97;
yVel *= 0.97;

hue = 60+sin(hueTimer)*12;
image_blend = make_color_hsv(hue,255,255);

x += xVel;
y += yVel;
xVel += xAcc;
yVel += yAcc;
xAcc = 0;
yAcc = 0;

hueTimer += 0.1;
}

if (room == rm_menu) {
	image_alpha = 0;
}