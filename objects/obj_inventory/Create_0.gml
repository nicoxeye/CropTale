// stores data for every item
itemInformation();

// inventory size
InvWidth = 3;
InvHeight = 4;

Inv = array_create(InvWidth*InvHeight, -1);

InvOpen = false;

// dragging variables
// from what inventory ex. from inv to chest
InvFrom = undefined;
InvTo = undefined;
// which slot it's moved
SlotFrom = undefined;
SlotTo = undefined;

// GUI init in camera object

inventoryAdd(Inv, global.ItemWheat, 4);
inventoryAdd(Inv, global.ItemTomato, 4);