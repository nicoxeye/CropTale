// center of screen

xDiff = obj_camera.camWidth / 2;
yDiff = obj_camera.camHeight / 2;


// draw_sprite(spr_player_left, 0, xDiff, yDiff) //checking if gui works

// drawing inventory
if InvOpen {
	
	//invbackground
	draw_sprite_ext(spr_background, 0, xDiff - 200 - 10, yDiff - 50 - 15, 1, 1, 0, c_white, 1);
	
	for (i = 0; i < array_length(Inv); i++) {
	
		var xx = xDiff - 200 + (i mod InvWidth) * 26;
		var yy = yDiff - 50 + (i div InvWidth) * 28;
		
		if i > InvWidth - 1 {
			yy = yy + 4;
		}
	
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
	

		//drawing mouse hovering
		// ! in gui the x and y are different that on the whole screen, thats why this function
		// xx, yy, xx+26, yy+28 -> because origin point in the inventory slot is set to (0,0)
		if point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), xx, yy, xx + 26, yy + 28) {
			draw_sprite(spr_inventory_slot_hover, 0, xx, yy);
			
			// start item drag
			if mouse_check_button_pressed(mb_left) {
				InvStartDrag(Inv, i);
			}
			
			// end item drag
			if mouse_check_button_released(mb_left) {
				InvEndDrag(Inv, i);
			}
			
		}
	}
	
	ShowItemDrag();
} else {
	//hotbar when inventoryh is closed	
	for (i = 0; i < InvWidth; i++) {
		var xx = xDiff - 26 + (i mod InvWidth) * 26;
		var yy = yDiff + 100;
		
		draw_sprite(spr_inventory_slot, 0, xx, yy);
		
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
		
		if i == HotBarSel {
			draw_sprite(spr_inventory_slot_hover, 0, xx, yy);
		}
		
		
	}
	
}


// using items, has to have an item
if Inv[HotBarSel] != -1 {
	
	if mouse_check_button_pressed(mb_left) and !InvOpen {
		
		switch(Inv[HotBarSel][0].ItemType){
			case "Crop":
				break;
			case "Tool":
				break;
			case "Seed":
				var nearest_plot = instance_nearest(mouse_x, mouse_y, obj_plot);
				if point_in_rectangle(mouse_x, mouse_y, nearest_plot.x, nearest_plot.y, nearest_plot.x+16, nearest_plot.y+16) && point_distance(obj_player.x, obj_player.y, nearest_plot.x, nearest_plot.y) < 16{
					
					var Crop = undefined;
					switch(Inv[HotBarSel][0]) {
						
						case global.ItemWheatSeed:
							Crop = global.CropWheat;
							break;
							
						case global.ItemTomatoSeed:
							Crop = global.CropWheat;
							break;
							
					}
					nearest_plot.Crop = Crop;
					inventoryRemove(Inv, Inv[HotBarSel][0], 1);
				}
				break;
		}
		
	}
	
}