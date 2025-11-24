// stores data for every item
itemInformation();
// crop initialization
CropInformation();

// inventory size
InvWidth = 3;
InvHeight = 4;

Inv = array_create(InvWidth*InvHeight, -1);

InvOpen = false;

// selected hotbar inv
HotBarSel = 0;

// dragging variables
// from what inventory ex. from inv to chest
InvFrom = undefined;
InvTo = undefined;
// which slot it's moved
SlotFrom = undefined;
SlotTo = undefined;

// GUI init in camera object

inventoryAdd(Inv, global.ItemWheatSeed, 2);
inventoryAdd(Inv, global.ItemTomatoSeed, 3);