if (immunityFrames <= 0) {
	xVel *= -1;
	yVel *= -1;
	hp -= 1;
	immunityFrames = 30;
	redness = 240-rednessFloor;
}