wx = window_mouse_get_x();
wy = window_mouse_get_y();

if (room == rm_menu) {
	if (mouse_check_button_released(mb_left) and wx >= 30 and wy >= 30
	and wx <= 400 and wy <= 70 and obj_gameManager.credits >= 10) {
		obj_gameManager.credits -= 10;
		obj_ship.hp = obj_ship.maxHp;
	}
	if (mouse_check_button_released(mb_left) and wx >= 30 and wy >= 90
	and wx <= 400 and wy <= 130 and obj_gameManager.credits >= damageCost) {
		obj_gameManager.credits -= damageCost;
		obj_ship.damage += 1;
		damageCost += 20;
	}
	if (mouse_check_button_released(mb_left) and wx >= 30 and wy >= 150
	and wx <= 400 and wy <= 190 and obj_gameManager.credits >= speedCost) {
		obj_gameManager.credits -= speedCost;
		obj_ship.spd += 0.1;
		speedCost += 20;
	}
	if (mouse_check_button_released(mb_left) and wx >= 30 and wy >= 210
	and wx <= 400 and wy <= 250 and obj_gameManager.credits >= healthCost) {
		obj_gameManager.credits -= healthCost;
		obj_ship.maxHp += 5;
		healthCost += 20;
	}
}

