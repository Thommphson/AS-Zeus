sleep 0.5; //Waits for initialization

//Sets Player Inventory after spawning in
[player, [missionNamespace, "inventory_var"]] call BIS_fnc_loadInventory;

//Checks player for an ace earplug item and adds it if missing
sleep 1;
private _items = items player;
if (!("ACE_EarPlugs" in _items)) then {
  player addItemToUniform "ACE_EarPlugs";
};