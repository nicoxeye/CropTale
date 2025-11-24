function itemInformation(){
	
	//Item Types (what character can have an inventory)
		/*
		Crop
		Tool
		Consumable
		Seed
		Food
		*/
		
	global.ItemWheat = {
		//struct
		Name: "Wheat",
		Sprite: spr_wheat,
		ItemType: "Crop"
	}
	
	global.ItemTomato = {
		Name: "Tomato",
		Sprite: spr_tomato,
		ItemType: "Crop"
	}
	
	global.ItemHoe = {
		Name: "Hoe",
		Sprite: spr_hoe,
		ItemType: "Tool"
	}
	
	global.ItemWheatSeed = {
		Name: "WheatSeed",
		Sprite: spr_wheatSeed,
		ItemType: "Seed"
	}
	
	global.ItemTomatoSeed = {
		Name: "TomatoSeed",
		Sprite: spr_tomatoSeed,
		ItemType: "Seed"
	}
}