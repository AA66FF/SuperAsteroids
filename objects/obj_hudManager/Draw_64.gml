if (room == rm_space) {
	draw_set_alpha(1);
	draw_set_halign(fa_left);
	draw_set_valign(fa_bottom);
	draw_text_transformed(40,920,"HP: "+string(obj_ship.hp)+"/"+string(obj_ship.maxHp),1.3,1.3,0);
	
	draw_text_transformed(220,920,"Credits: "+string(obj_gameManager.credits),1.3,1.3,0);

	draw_set_halign(fa_center);
	draw_text_transformed(room_width/2,920,"Wave "+string(obj_gameManager.wave),1.3,1.3,0);
	
	draw_set_halign(fa_right);
	draw_text_transformed(920,920,"Press M to go to Menu",1.3,1.3,0);
	
	if (obj_ship.dead) {
		draw_set_alpha(deathAlpha);
		draw_set_halign(fa_center);
		draw_set_valign(fa_center);
		draw_text_transformed(room_width/2,room_height/2,"GAME OVER",6,6,0);
	}
}

if (room == rm_menu) {
	draw_set_alpha(1);
	draw_set_halign(fa_left);
	draw_set_valign(fa_bottom);
	draw_text_transformed(40,920,"HP: "+string(obj_ship.hp)+"/"+string(obj_ship.maxHp),1.3,1.3,0);
	
	draw_text_transformed(220,920,"Credits: "+string(obj_gameManager.credits),1.3,1.3,0);
	
	draw_text_transformed(40,60,"Repair Ship: "+string(repairCost)+"credits",1.3,1.3,0);
	draw_text_transformed(40,120,"Upgrade Damage: "+string(damageCost)+" credits",1.3,1.3,0);
	draw_text_transformed(40,180,"Upgrade Speed: "+string(speedCost)+" credits",1.3,1.3,0);
	draw_text_transformed(40,240,"Upgrade Health: "+string(healthCost)+" credits",1.3,1.3,0);
	
	draw_set_halign(fa_center);
	draw_text_transformed(room_width/2,920,"Wave "+string(obj_gameManager.wave),1.3,1.3,0);
	
	draw_set_halign(fa_right);
	draw_text_transformed(920,920,"Press B to go Back",1.3,1.3,0);
	draw_text_transformed(920,60,"Asteroids destroyed: "+string(obj_gameManager.asteroidsDestroyed),1.3,1.3,0);
	draw_text_transformed(920,120,"Credits collected: "+string(obj_gameManager.creditsGained),1.3,1.3,0);
	draw_text_transformed(920,180,"Lasers shot: "+string(obj_gameManager.lasersShot),1.3,1.3,0);
	draw_text_transformed(920,240,"Lasers hit: "+string(obj_gameManager.lasersHit),1.3,1.3,0);
	draw_text_transformed(920,300,"Damage dealt: "+string(obj_gameManager.damageDealt),1.3,1.3,0);
	draw_text_transformed(920,360,"Damage taken: "+string(obj_gameManager.damageTaken),1.3,1.3,0);
}
if (controlAlpha > 0) {
	draw_set_alpha(controlAlpha);
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_text_transformed(room_width/2,room_height/2-30,"Arrow keys to move",3,3,0);
	draw_text_transformed(room_width/2,room_height/2+30,"SPACE to fire",3,3,0);
}



