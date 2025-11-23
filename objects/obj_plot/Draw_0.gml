draw_self();

// drawing crops
if Crop != undefined {
	var Sprite = Crop.Sprite;
	var SubImage = 0;
	
	// for animations of growing plants
	var TotalTime = Crop.GrowTime;
	var GrowQuart = TotalTime / 4;
	var GrowHalf = TotalTime / 2;
	
	if Tick >= 0 && Tick <= GrowQuart { SubImage = 0; }
	if Tick >= GrowQuart && Tick <= GrowHalf { SubImage = 1; }
	if Tick >= GrowHalf && Tick <= TotalTime { SubImage = 2; }
	if Tick >= TotalTime { SubImage = 3; }
	
	draw_sprite_ext(Sprite, SubImage, x, y, 1, 1, 0, c_white, 1);
}

// draw_text(x, y, Tick)
