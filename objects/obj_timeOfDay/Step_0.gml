Tick += 1;

if Tick >= 10 {
	
	//update crops
	// with -> object that is the one specified in brackets will run this code
	with (obj_plot) {
		
		// only if the crop is in the plot
		if Crop != undefined {
			// it will store how long its planted
			Tick++;
		} else {
			// if f.e harvested
			Tick = 0;
		}
	}
	
	Tick = 0;
	
}