if (immunityFrames <= 0) {
	xVel *= -1;
	yVel *= -1;
	hp -= other.damage;
	obj_gameManager.damageTaken += other.damage;
	immunityFrames = 30;
	redness = 240-rednessFloor;
}