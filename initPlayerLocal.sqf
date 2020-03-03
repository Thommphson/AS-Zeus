sleep 1;    //Time to wait for player to initialize in the mission

//Save loadout when ever we exit an arsenal

[ missionNamespace, "arsenalClosed", {
	player linkItem "tf_anprc152";
	systemChat "LOADOUT SAVED";//Not actually needed, can say anything you want
	waitUntil {time > 0.2};    //Time to wait to make sure Arsenal items are applied
	[player, [missionNamespace, "inventory_var"]] call BIS_fnc_saveInventory;
}] call BIS_fnc_addScriptedEventHandler;

["ace_killed", {
	[player, [missionNamespace, "inventory_var"]] call BIS_fnc_saveInventory;
    if (_this select 0 == player) then {
        ["unconscious", false] call ace_common_fnc_setDisableUserInputStatus;
    };
}] call CBA_fnc_addEventHandler;