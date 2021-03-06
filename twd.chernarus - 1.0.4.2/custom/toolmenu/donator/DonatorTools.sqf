_pathtoplayertools = "custom\toolmenu\common\PlayerTools\";
_pathtoadmintools = "custom\toolmenu\common\AdminTools\";
_pathtospawnboxes = "custom\toolmenu\common\SpawnBoxes\";
_pathtoeventboxes = "custom\toolmenu\common\EventBoxes\";
_pathtoskinmenu = "custom\toolmenu\common\SkinMenu\";
_pathtozedspawn = "custom\toolmenu\common\ZedSpawn\";
_pathtovehiclespawn = "custom\toolmenu\common\VehicleSpawn\";
_pathtotestmenu = "custom\toolmenu\common\TestMenu\";
_pathtokeymenu = "custom\toolmenu\common\VehicleKey\";

_EXECscript1 = 'player execVM "'+_pathtoplayertools+'%1"';
_EXECscript2 = 'player execVM "'+_pathtoadmintools+'%1"';
_EXECscript3 = 'player execVM "'+_pathtospawnboxes+'%1"';
_EXECscript4 = 'player execVM "'+_pathtoeventboxes+'%1"';
_EXECscript5 = 'player execVM "'+_pathtoskinmenu+'%1"';
_EXECscript6 = 'player execVM "'+_pathtozedspawn+'%1"';
_EXECscript7 = 'player execVM "'+_pathtovehiclespawn+'%1"';
_EXECscript8 = 'player execVM "'+_pathtotestmenu+'%1"';
_EXECscript9 = 'player execVM "'+_pathtokeymenu+'%1"';

if ((getPlayerUID player) in userDALL) then 
{
		if ((getPlayerUID player) in userD1) then 
		{
			adminmenu =
			[
				["",true],
				["LVL 1: Donator", [-1], "", -5, [["expression", ""]], "1", "0"],
				["Donator Tools", [3], "#USER:LVL1Tools", -5, [["expression", ""]], "1", "1"],
				["Skins *Remove Backpack!*", [4],  "", -5, [["expression", format[_EXECscript5,"Skins.sqf"]]], "1", "1"],						
				["Spawn Boxes", [8], "#USER:SpawnBoxesLVL1", -5, [["expression", ""]], "1", "1"],
				["READ ME!", [8], "#USER:readMe", -5, [["expression", ""]], "1", "1"],
				["", [-1], "", -5, [["expression", ""]], "1", "0"],
				["Exit", [13], "", -3, [["expression", ""]], "1", "1"]		
			];
		};
	//
	///////////////////////////////////////////////////////////
	//		
		if ((getPlayerUID player) in userD2) then 
		{
			adminmenu =
			[
				["",true],
				["LVL 2: Donator", [-1], "", -5, [["expression", ""]], "1", "0"],
				["Donator Tools", [3], "#USER:LVL2Tools", -5, [["expression", ""]], "1", "1"],
				["Skins *Remove Backpack!*", [4],  "", -5, [["expression", format[_EXECscript5,"Skins.sqf"]]], "1", "1"],				
				["Spawn Boxes", [8], "#USER:SpawnBoxesLVL2", -5, [["expression", ""]], "1", "1"],
				["READ ME!", [8], "#USER:readMe", -5, [["expression", ""]], "1", "1"],
				["", [-1], "", -5, [["expression", ""]], "1", "0"],
				["Exit", [13], "", -3, [["expression", ""]], "1", "1"]		
			];
		};
	//
	///////////////////////////////////////////////////////////
	//	
		if ((getPlayerUID player) in userD3) then 
		{
			adminmenu =
			[
				["",true],
				["LVL 3: Donator", [-1], "", -5, [["expression", ""]], "1", "0"],
				["Donator Tools", [3], "#USER:LVL3Tools", -5, [["expression", ""]], "1", "1"],
				["Skins *Remove Backpack!*", [4],  "", -5, [["expression", format[_EXECscript5,"Skins.sqf"]]], "1", "1"],
				["Vehicle", [5], "#USER:VehicleMenu0", -5, [["expression", ""]], "1", "1"],							
				["Spawn Boxes", [8], "#USER:SpawnBoxesLVL3", -5, [["expression", ""]], "1", "1"],
				["READ ME!", [8], "#USER:readMe", -5, [["expression", ""]], "1", "1"],
				["", [-1], "", -5, [["expression", ""]], "1", "0"],
				["Exit", [13], "", -3, [["expression", ""]], "1", "1"]		
			];
		};
};
											/////////
                                            //MENUS//
                                            /////////

LVL1Tools =
[
	["",true],
		["Flip Vehicle", [8],  "", -5, [["expression", format[_EXECscript2,"flipvehicle.sqf"]]], "1", "1"],		
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

LVL2Tools =
[
	["",true],
		["Remove Grass", [2],  "", -5, [["expression", format[_EXECscript2,"removegrass.sqf"]]], "1", "1"],
		["Flip Vehicle", [3],  "", -5, [["expression", format[_EXECscript2,"flipvehicle.sqf"]]], "1", "1"],		
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

LVL3Tools =
[
	["",true],
		["Remove Grass", [2],  "", -5, [["expression", format[_EXECscript2,"removegrass.sqf"]]], "1", "1"],
		["Flip Vehicle", [3],  "", -5, [["expression", format[_EXECscript2,"flipvehicle.sqf"]]], "1", "1"],		
		["No Recoil", [4],  "", -5, [["expression", format[_EXECscript2,"norecoil.sqf"]]], "1", "1"],	
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
//
///////////////////////////////////////////////////////////
//	
SpawnBoxeslvl1 =
[
	["",true],
		["Health", [3],  "", -5, [["expression", format[_EXECscript3,"HealthBox.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
SpawnBoxeslvl2 =
[
	["",true],
		["Build", [2],  "", -5, [["expression", format[_EXECscript3,"BuildBox.sqf"]]], "1", "1"],
		["Health", [3],  "", -5, [["expression", format[_EXECscript3,"HealthBox.sqf"]]], "1", "1"],
		["Backpack", [4],  "", -5, [["expression", format[_EXECscript3,"backpack.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
SpawnBoxeslvl3 =
[
	["",true],
		["Build", [2],  "", -5, [["expression", format[_EXECscript3,"BuildBox.sqf"]]], "1", "1"],
		["Health", [3],  "", -5, [["expression", format[_EXECscript3,"HealthBox.sqf"]]], "1", "1"],
		["Backpack", [4],  "", -5, [["expression", format[_EXECscript3,"backpack.sqf"]]], "1", "1"],
		["Ammo *NEW*", [5],  "", -5, [["expression", format[_EXECscript3,"ammoBox.sqf"]]], "1", "1"],
		["DONT ABUSE", [-1], "", -5, [["expression", ""]], "1", "0"],
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
//
///////////////////////////////////////////////////////////
//
VehicleMenu0 = 
[
	["",true],
		["Cars >>", [12], "#USER:VehicleMenu1", -5, [["expression", ""]], "1", "1"],
		["Trucks/Boats >>", [12], "#USER:VehicleMenu2", -5, [["expression", ""]], "1", "1"],	
		["Helicopters >>", [12], "#USER:VehicleMenu3", -5, [["expression", ""]], "1", "1"],	
		["Jets >>", [12], "#USER:VehicleMenu4", -5, [["expression", ""]], "1", "1"],	
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
				["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

VehicleMenu1 = 
[
	["",true],
		["Cars n Stuff", [-1], "", -5, [["expression", ""]], "1", "0"],
						["Next page", [12], "#USER:VehicleMenu2", -5, [["expression", ""]], "1", "1"],
		["SUV", [2],  "", -5, [["expression", format[_EXECscript7,"SUV.sqf"]]], "1", "1"],
		["Offroad", [2],  "", -5, [["expression", format[_EXECscript7,"militrayOffroad.sqf"]]], "1", "1"],
		["Taxi", [2],  "", -5, [["expression", format[_EXECscript7,"taxi.sqf"]]], "1", "1"],
		["Tractor", [2],  "", -5, [["expression", format[_EXECscript7,"Tractor.sqf"]]], "1", "1"],
		["Golf", [2],  "", -5, [["expression", format[_EXECscript7,"A10.sqf"]]], "1", "1"],		
		["Bike", [2],  "", -5, [["expression", format[_EXECscript7,"Bike.sqf"]]], "1", "1"],	
		["ATV", [2],  "", -5, [["expression", format[_EXECscript7,"ATV.sqf"]]], "1", "1"],	
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
				["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

VehicleMenu2 = 
[
	["",true],
		["Vans n Boats Stuff", [-1], "", -5, [["expression", ""]], "1", "0"],
						["Next page", [12], "#USER:VehicleMenu3", -5, [["expression", ""]], "1", "1"],
		["HMMV", [2],  "", -5, [["expression", format[_EXECscript7,"HMMV.sqf"]]], "1", "1"],
		["Bus", [2],  "", -5, [["expression", format[_EXECscript7,"bus.sqf"]]], "1", "1"],
		["PBX", [2],  "", -5, [["expression", format[_EXECscript7,"PBX.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
				["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

VehicleMenu3 = 
[
	["",true],
		["Helicopters", [-1], "", -5, [["expression", ""]], "1", "0"],
						["Next page", [12], "#USER:VehicleMenu4", -5, [["expression", ""]], "1", "1"],
		["UH1H", [4],  "", -5, [["expression", format[_EXECscript7,"UH1H_TK.sqf"]]], "1", "1"],
		["MH6J", [7],  "", -5, [["expression", format[_EXECscript7,"MH6J.sqf"]]], "1", "1"],		
		["", [-1], "", -5, [["expression	", ""]], "1", "0"],
				["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

VehicleMenu4 = 
[
	["",true],
		["Aeroplanes and Jets", [-1], "", -5, [["expression", ""]], "1", "0"],
		["AV8B", [3],  "", -5, [["expression", format[_EXECscript7,"AV8B.sqf"]]], "1", "1"],
		["C130", [4],  "", -5, [["expression", format[_EXECscript7,"C130.sqf"]]], "1", "1"],
		["MV22", [7],  "", -5, [["expression", format[_EXECscript7,"MV22.sqf"]]], "1", "1"],
		["AN2", [7],  "", -5, [["expression", format[_EXECscript7,"an2_prop.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
				["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
//
///////////////////////////////////////////////////////////
//

readMe =
[
	["",true],
		["Due to Bohemia Interactives", [-1], "", -5, [["expression", ""]], "1", "0"],
		["Apparent rules about donations", [-1], "", -5, [["expression", ""]], "1", "0"],
		["It is possible we might", [-1], "", -5, [["expression", ""]], "1", "0"],
		["need to remove donator tools", [-1], "", -5, [["expression", ""]], "1", "0"],		
		["for all users, as giving", [-1], "", -5, [["expression", ""]], "1", "0"],
		["items for donations", [-1], "", -5, [["expression", ""]], "1", "0"],
		["that are owned by ", [-1], "", -5, [["expression", ""]], "1", "0"],
		["BI, DayZ & Epoch, is", [-1], "", -5, [["expression", ""]], "1", "0"],
		["now a breach of the BI Licence", [-1], "", -5, [["expression", ""]], "1", "0"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
		["You are still welcome to", [-1], "", -5, [["expression", ""]], "1", "0"],
		["donate towards paying", [-1], "", -5, [["expression", ""]], "1", "0"],
		["for server bills", [-1], "", -5, [["expression", ""]], "1", "0"],
		["but it is possible", [-1], "", -5, [["expression", ""]], "1", "0"],
		["We may have to remove", [-1], "", -5, [["expression", ""]], "1", "0"],
		["Donator Tool Access", [-1], "", -5, [["expression", ""]], "1", "0"],
		["for all users", [-1], "", -5, [["expression", ""]], "1", "0"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],		
		["Apologies for all", [-1], "", -5, [["expression", ""]], "1", "0"],
		["Inconvenience caused", [-1], "", -5, [["expression", ""]], "1", "0"],
		["In this matter", [-1], "", -5, [["expression", ""]], "1", "0"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
		["More information will", [-1], "", -5, [["expression", ""]], "1", "0"],
		["be available on the forums", [-1], "", -5, [["expression", ""]], "1", "0"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],		
		["Thanks, ", [-1], "", -5, [["expression", ""]], "1", "0"],		
		["TWD Staff", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

showCommandingMenu "#USER:adminmenu";