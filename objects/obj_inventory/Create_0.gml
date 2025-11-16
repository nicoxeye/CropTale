// stores data for every item
itemInformation();

// inventory size
InvWidth = 3;
InvHeight = 5;

Inv = array_create(InvWidth*InvHeight, -1);

InvOpen = false;

// GUI init
// temporary hardcoded numbers cause with the camera object it doesnt work??
display_set_gui_size(480, 270);

inventoryAdd(Inv, global.ItemWheat, 4);
inventoryAdd(Inv, global.ItemTomato, 4);