//--- Respawn inventory settings

//--- Rifleman
[west,"b_soldier_f"] call bis_fnc_addrespawninventory;
[east,"o_soldier_f"] call bis_fnc_addrespawninventory;
[resistance,"i_soldier_f"] call bis_fnc_addrespawninventory;

//--- Curator settings
_curator = allcurators select 0;
_curators = allcurators;

//--- Unlock everything
if (("CuratorGodMode" call bis_fnc_getParamValue) > 0) exitwith {
	{
		_x setcuratorcoef ["place",0];
		_x setcuratorcoef ["delete",0];
	} foreach _curators;
};