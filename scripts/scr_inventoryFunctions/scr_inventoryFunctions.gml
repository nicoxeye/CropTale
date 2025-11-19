function invAdd(InvArray, Item){
	for (i = 0; i < array_length(InvArray); i++) {
		if InvArray[i] != -1 { // if not empty
			//checking if the item is in inventory
			if InvArray[i][0] == Item {
				// [i][0] is the item itself
				// [i][1] is the quantity
				InvArray[i][1]++;
				return;
			}
		}
	}
	
	// new stack
	for (i = 0; i < array_length(InvArray); i++) {
		if InvArray[i] == -1 { // if empty
			InvArray[i] = [Item, 1]; // creating a new array in the i posistion with the item and item quantity	
			return;
		}
	}
}

function inventoryAdd(InvArray, Item, Quantity) {
	
	repeat(Quantity) {
		invAdd(InvArray, Item)
	}
	
}


function invRemove(InvArray, Item){
	for (i = 0; i < array_length(InvArray); i++) {
		if InvArray[i] != -1 { // if not empty
			//checking if the item is in inventory
			if InvArray[i][0] == Item {
				InvArray[i][1]--;
				return;
			}
		}
	}
}

function inventoryRemove(InvArray, Item, Quantity) {
	
	repeat(Quantity) {
		invRemove(InvArray, Item)
	}
	
}


function InvStartDrag(InvArray, Slot) { 
	
	if InvFrom == undefined && InvArray[Slot] != -1 { 
		InvFrom = InvArray; 
		SlotFrom = Slot; 
	} 
	return; 
	
} 


function InvEndDrag(InvArray, Slot) { 
	
	if InvFrom != undefined { 
		InvTo = InvArray; SlotTo = Slot; 
		var TempFrom = InvFrom[SlotFrom]; 
		var TempTo = InvTo[SlotTo]; 
		
		// switching the two slots 
		InvFrom[SlotFrom] = TempTo; 
		InvTo[SlotTo] = TempFrom; 
		
		//reseting
		InvFrom = undefined; 
		InvTo = undefined; 
		SlotFrom = undefined; 
		SlotTo = undefined; 
	} 
	return; 
	
} 


function ShowItemDrag() { 
	
	// drawing the dragged item
	if InvFrom != undefined { 
		var Sprite = InvFrom[SlotFrom][0].Sprite; 
		draw_sprite(Sprite, 0, device_mouse_x_to_gui(0), device_mouse_y_to_gui(0)); 
	} 
	
}