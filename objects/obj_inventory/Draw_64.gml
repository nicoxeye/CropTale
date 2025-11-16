// center of screen
xDiff = obj_camera.camWidth / 2;
yDiff = obj_camera.camHeight / 2;

// draw_sprite(spr_player_left, 0, xDiff, yDiff) //checking if gui works

// drawing inventory
if InvOpen {
	for (i = 0; i < array_length(Inv); i++) {
	
		xx = xDiff - 200 + (i mod InvWidth) * 26;
		yy = yDiff - 100 + (i div InvWidth) * 28;
	
		// numbers after coordinates: xscale, yscale, rotation, colour, alpha (opacity)
		draw_sprite_ext(spr_inventory_slot, 0, xx, yy, 1, 1, 0, c_white, 1);
	
		// drawing items in slots
		if Inv[i] != -1 {
			// taking sprite from the global struct
			Sprite = Inv[i][0].Sprite;
			draw_sprite(Sprite, 0, xx + 5, yy + 5);
		
			// draw amount
			if Inv[i][1] > 1 {
				draw_text_transformed(xx + 3, yy + 2, Inv[i][1], 0.5, 0.5, 1);
			}
		}
	}
}