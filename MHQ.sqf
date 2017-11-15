//Gets MHQ position
_pos = MHQ1 call CBA_fnc_getPos;
    _posX = _pos select 0; 
    _posY = _pos select 1;
	_posZ = _pos select 2;
systemChat format ["%1 x, %2 y",_posX,_posY];

//delete MHQ
deleteVehicle MHQ1;


//spawns MHQ composition
systemChat "MHQ being deployed";
_tent1 = createVehicle ["US_WarfareBFieldhHospital_Base_EP1",[_posX+2,_posY+11,0],[],0,"CAN_COLLIDE"];
_tent1 allowDamage false;
sleep 1;
_helipad1 = createVehicle ["Land_HelipadRescue_F",[_posX+(-17),_posY+11,0],[],0,"CAN_COLLIDE"];
sleep 1;
_table1 = createVehicle ["Land_CampingTable_F",[_posX+(-5),_posY+11,0],[],0,"CAN_COLLIDE"];
_table1 setDir 90;
_table1 allowDamage false;
sleep 1;
_radio1 = createVehicle ["cwa_Vysilacka",[_posX+(-5),_posY+11,0.813],[],0,"CAN_COLLIDE"];
_radio1 allowDamage false;
_radio1 setVehicleVarName "radio1"; radio1 = _radio1;
sleep 1;
_bunker1 = createVehicle ["Land_fortified_nest_small_EP1",[_posX+(-8),_posY+25,0],[],0,"CAN_COLLIDE"];
_bunker1 setDir 180;
sleep 1;
_net1 = createVehicle ["Land_CamoNet_NATO_EP1",[_posX+(-29),_posY+27,0],[],0,"CAN_COLLIDE"];
_net1 setDir 326;
_net1 allowDamage false;
sleep 1;
_box1 = createVehicle ["B_SupplyCrate_F",[_posX+(-31),_posY+24,0],[],0,"CAN_COLLIDE"];
_box1 setDir 321;
clearMagazineCargoGlobal _box1;
clearWeaponCargoGlobal _box1;
clearBackpackCargoGlobal _box1;
clearItemCargoGlobal _box1;
_box1 addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_Mk318_Stanag", 50];
_box1 addMagazineCargoGlobal ["rhs_200rnd_556x45_T_SAW", 50];
_box1 addMagazineCargoGlobal ["rhsusf_100Rnd_762x51",50];
_box1 addMagazineCargoGlobal ["rhsusf_mag_15Rnd_9x19_JHP",20];
_box1 addMagazineCargoGlobal ["rhs_mag_M433_HEDP", 50];
_box1 addMagazineCargoGlobal ["ace_M84",10];
_box1 addMagazineCargoGlobal ["rhs_mag_m67",10];
_box1 addMagazineCargoGlobal ["rhs_mag_an_m8hc",10];
_box1 addItemCargoGlobal ["ACE_bloodIV_500",10];
_box1 addItemCargoGlobal ["ACE_epinephrine",25];
_box1 addItemCargoGlobal ["ace_Morphine",25];
_box1 addItemCargoGlobal ["ACE_fieldDressing",25];
_box1 addItemCargoGlobal ["tf_anprc152",5];
sleep 1;
_box2 = createVehicle ["AmmoCrates_NoInteractive_Large",[_posX+(-26),_posY+27,0],[],0,"CAN_COLLIDE"];
sleep 1;
_wire1 = createVehicle ["Land_Razorwire_F",[_posX,_posY+23,0],[],0,"CAN_COLLIDE"];
_wire1 setDir 210;
_wire1 allowDamage false;
sleep 1;
_hmv1 = createVehicle ["rhsusf_m1025_d_s_m2",[_posX+(-11),_posY+25,0],[],0,"CAN_COLLIDE"];
sleep 1;
_hmv2 = createVehicle ["rhsusf_m1025_d_s_m2",[_posX+(-35),_posY+12,0],[],0,"CAN_COLLIDE"];
_hmv2 setDir 90;
sleep 1;
_mrzr1 = createVehicle ["rhsusf_mrzr4_d",[_posX+(-35),_posY+6,0],[],0,"CAN_COLLIDE"];
_mrzr1 setDir 90;
sleep 1;
_mrzr2 = createVehicle ["rhsusf_mrzr4_d",[_posX+(-35),_posY+1,0],[],0,"CAN_COLLIDE"];
_mrzr2 setDir 90;
sleep 1;
_bunker2 = createVehicle ["Land_fortified_nest_big",[_posX+(-26),_posY+(-11),0],[],0,"CAN_COLLIDE"];
sleep 1;
_flag1 = createVehicle ["Flag_US_F",[_posX+(-7),_posY+(-10),0],[],0,"CAN_COLLIDE"];
_flag1 allowDamage false;
sleep 1;
_mhq1 = createVehicle ["rhsusf_m998_d_4dr_fulltop",[_posX,_posY+(-1),0],[],0,"CAN_COLLIDE"];
_mhq1 setDir 270;
_mhq1 allowDamage false;
_mhq1 setFuel 0;

//set tp from fob to mhq
[HQ,["Teleport - MHQ","teleport.sqf",[_radio1]]] remoteExec ["addAction", -2, true];
[radio1,["Teleport - FOB","teleport.sqf",[HQ]]] remoteExec ["addAction", -2, true];

systemChat "MHQ deployed";













//Remove deploy option
//removeAction Deploy MHQ;

