if (room == rm_space) {
if (not dead and not dying) {
	image_alpha = 1;
}

if (not dead and not dying) {
	controlAcc = [0,keyboard_check(vk_down) - keyboard_check(vk_up)];
	controlAng = keyboard_check(vk_left) - keyboard_check(vk_right);
	controlFire = keyboard_check(vk_space);
} else {
	controlAcc = [0,0];
	controlAng = 0;
	controlFire = 0;
}

angle += controlAng/10;
image_angle = radtodeg(angle);

rednessFloor = 240*(1-hp/maxHp);
redness = floor(redness/rednessDecay);
image_blend = make_color_hsv(0,min(redness+rednessFloor,255),255);

controlAcc = rotate(controlAcc,angle);
xAcc += controlAcc[0]*spd;
yAcc += controlAcc[1]*spd;

x += xVel;
y += yVel;
xVel += xAcc;
yVel += yAcc;
xAcc = 0;
yAcc = 0;

dragVector = [-xVel,-yVel];
dragAngle = getAngle(dragVector[0],dragVector[1]);
dragVector = [sin(dragAngle)*spd/3,-cos(dragAngle)*spd/3]
if (abs(xVel) < abs(dragVector[0])) {
	xVel = 0;
} else {
	xVel += dragVector[0];
}
if (abs(yVel) < abs(dragVector[1])) {
	yVel = 0;
} else {
	yVel += dragVector[1];
}

if (controlFire and fireCd <= 0) {
	var laser = instance_create_layer(x,y,"Instances",obj_laser);
	laser.angle = angle;
	laser.image_angle = radtodeg(angle);
	var laserVel = rotate([0,-30],angle);
	laser.xVel = laserVel[0];
	laser.yVel = laserVel[1];
	var laserPosAdd = rotate([0,-40],angle);
	laser.x += laserPosAdd[0];
	laser.y += laserPosAdd[1];
	laser.damage = damage;
	fireCd = fireCdAdd;
	sprite_index = spr_shipFiring;
	obj_gameManager.lasersShot += 1;
}

if (x < 25) {
	x = 25;
	xVel *= -0.9;
}
if (x > room_width-25) {
	x = room_width-25;
	xVel *= -0.9;
}

if (y < 25) {
	y = 25;
	yVel *= -0.9;
}
if (y > room_height-25) {
	y = room_height-25;
	yVel *= -0.9;
}

fireCd -= 1;
immunityFrames -= 1;
}

if (hp <= 0) {
	dying = true;
}

if (dying == true) {
	image_alpha -= 1/50;
}

if (image_alpha <= 0) {
	dead = true;
}

if (room == rm_menu) {
	image_alpha = 0;
}