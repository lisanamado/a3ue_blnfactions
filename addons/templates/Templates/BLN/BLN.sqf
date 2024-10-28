//This is a basic CUP Rebel faction I'm trying to make for our next campaign in AU
//It's meant to be a latin-american civilian-in-arms faction, including female soldiers and spanish radio voiceovers, and a very limited initial weapons stash.
//I made it on the base of LRI rebel faction. most of the scripting is a copy of it as it is found in AU's core pbo.
//I can find it in the faction selector, but the game will keep trying to start for ever, getting in RPT file the errors I commented in discord.


#include "..\..\script_component.hpp"

private _hasWs = "ws" in A3A_enabledDLC;
private _hasMarksman = "mark" in A3A_enabledDLC;
private _hasLawsOfWar = "orange" in A3A_enabledDLC;
private _hasTanks = "tank" in A3A_enabledDLC;
private _hasApex = "expansion" in A3A_enabledDLC;
private _hasContact = "enoch" in A3A_enabledDLC;

///////////////////////////
//   Rebel Information   //
///////////////////////////

["name", "BLN"] call _fnc_saveToTemplate;

["flag", "Flag_NATO_F"] call _fnc_saveToTemplate;
["flagTexture", QPATHTOFOLDER(Templates\BLN\oktubre.paa)] call _fnc_saveToTemplate;
["flagMarkerType", "a3a_flag_LRI"] call _fnc_saveToTemplate;

//////////////////////////
//       Vehicles       //
//////////////////////////

["vehiclesBasic", ["C_Quadbike_01_F", "CUP_C_Golf4_black_Civ"]] call _fnc_saveToTemplate;
["vehiclesLightUnarmed", ["CUP_O_Hilux_unarmed_TK_CIV"]] call _fnc_saveToTemplate;
["vehiclesLightArmed", ["CUP_I_Hilux_M2_IND_G_F"]] call _fnc_saveToTemplate;
["vehiclesTruck", ["CUP_C_V3S_Open_TKC"]] call _fnc_saveToTemplate;
["vehiclesAT", ["CUP_I_Hilux_SPG9_NAPA"]] call _fnc_saveToTemplate;
["vehiclesAA", ["CUP_I_Ural_ZU23_NAPA", "CUP_I_Hilux_zu23_NAPA"]] call _fnc_saveToTemplate;
["vehiclesBoat", ["I_G_Boat_Transport_01_F"]] call _fnc_saveToTemplate;

["vehiclesPlane", ["CUP_C_DC3_CIV"]] call _fnc_saveToTemplate;
                    
["vehiclesCivPlane", ["CUP_C_AN2_CIV", "CUP_C_C47_CIV"]] call _fnc_saveToTemplate;

["vehiclesMedical", ["CUP_C_S1203_Ambulance_CIV"]] call _fnc_saveToTemplate;

["vehiclesCivCar", ["C_Quadbike_01_F", "CUP_C_Golf4_black_Civ"]] call _fnc_saveToTemplate;
["vehiclesCivTruck", ["CUP_C_Ural_Civ_03"]] call _fnc_saveToTemplate;
["vehiclesCivHeli", ["CUP_C_412"]] call _fnc_saveToTemplate;
["vehiclesCivBoat", ["C_Rubberboat"]] call _fnc_saveToTemplate;

["staticMGs", ["I_E_HMG_02_high_F"]] call _fnc_saveToTemplate;
["staticAT", ["CUP_I_SPG9_NAPA"]] call _fnc_saveToTemplate;
["staticAA", ["CUP_I_ZU23_NAPA"]] call _fnc_saveToTemplate;

["staticMortars", ["CUP_I_2b14_82mm_NAPA"]] call _fnc_saveToTemplate;
["staticMortarMagHE", "8Rnd_82mm_Mo_shells"] call _fnc_saveToTemplate;
["staticMortarMagSmoke", "8Rnd_82mm_Mo_Smoke_white"] call _fnc_saveToTemplate;
["staticMortarMagFlare", "8Rnd_82mm_Mo_Flare_white"] call _fnc_saveToTemplate;

["mineAT", "CUP_MineE_M"] call _fnc_saveToTemplate;
["mineAPERS", "APERSMine_Range_Mag"] call _fnc_saveToTemplate;

["breachingExplosivesAPC", [["DemoCharge_Remote_Mag", 1]]] call _fnc_saveToTemplate;
["breachingExplosivesTank", [["SatchelCharge_Remote_Mag", 1], ["DemoCharge_Remote_Mag", 2]]] call _fnc_saveToTemplate; //this line determines explosives needed for breaching Tanks -- Example: [["SatchelCharge_Remote_Mag", 1], ["DemoCharge_Remote_Mag", 2]]] -- Array, can use Multiple

//////////////////////////////////////
//       Antistasi Plus Stuff       //
//////////////////////////////////////

//puede ser que acá falte algo tipo un include

["lootCrate", ""] call _fnc_saveToTemplate;
["rallyPoint", ""] call _fnc_saveToTemplate;

//animation sources - camo nets, slat cages, decals etc, digit is probability of appearance
["animations", [
    ["vehClass", ["animsource_example_1", 0.25, "animsource_example_2", 0.3]]
]] call _fnc_saveToTemplate;

//vehicle skins
["variants", [
    ["vehClass", ["paint", 1]]
]] call _fnc_saveToTemplate;



///////////////////////////
//  Rebel Starting Gear  //
///////////////////////////


private _initialRebelEquipment = [
    "CUP_sgun_CZ584", "CUP_sgun_slamfire", "CUP_srifle_CZ550_rail", ["CUP_srifle_CZ550", 5],
    "CUP_1Rnd_12Gauge_Pellets_No00_Buck", "CUP_1Rnd_12Gauge_Pellets_No3_Buck", "CUP_5x_22_LR_17_HMR_M", "CUP_6Rnd_45ACP_M", "CUP_1Rnd_762x51_CZ584",
    "CUP_hgun_TaurusTracker455", "ACE_Flashlight_Maglite_ML300L",
    
    ["IEDUrbanSmall_Remote_Mag", 30], ["IEDLandSmall_Remote_Mag", 30], ["IEDUrbanBig_Remote_Mag", 5], ["IEDLandBig_Remote_Mag", 5],
    
    

    "CUP_V_I_Carrier_Belt", "CUP_V_I_Guerilla_Jacket", "CUP_V_I_RACS_Carrier_Rig_2", "CUP_V_I_RACS_Carrier_Rig_wdl_2",
    "CUP_V_RUS_Smersh_New_Light", "CUP_V_OI_TKI_Jacket1_06", "CUP_V_OI_TKI_Jacket1_05", "CUP_V_OI_TKI_Jacket1_03", "CUP_V_OI_TKI_Jacket3_01",
    "B_FieldPack_cbr", "B_FieldPack_khk", "B_FieldPack_oli","B_AssaultPack_cbr","B_AssaultPack_rgr","B_AssaultPack_khk",
    "Binocular"
];

if (A3A_hasTFAR) then {_initialRebelEquipment append ["tf_microdagr", "tf_anprc154"]};
if (A3A_hasTFAR && startWithLongRangeRadio) then {
    _initialRebelEquipment pushBack "tf_anprc155";
    _initialRebelEquipment pushBack "tf_anprc155_coyote";
};
if (A3A_hasTFARBeta) then {_initialRebelEquipment append ["TFAR_microdagr", "TFAR_anprc154"]};
if (A3A_hasTFARBeta && startWithLongRangeRadio) then {
    _initialRebelEquipment pushBack "TFAR_anprc155";
    _initialRebelEquipment pushBack "TFAR_anprc155_coyote";
};

_initialRebelEquipment append ["Chemlight_blue","Chemlight_green","Chemlight_red","Chemlight_yellow"];

["initialRebelEquipment", _initialRebelEquipment] call _fnc_saveToTemplate;

//Acá van a ir _FrebUniforms y _MrebUniforms

private _rebUniforms = [
    "U_B_CombatUniform_mcam_W",
    "U_B_CombatUniform_mcam_tshirt_W",
    "WU_B_T_Soldier_AR_F",
    "WU_B_T_Soldier_F",
    "WU_B_HeliPilotCoveralls",
    "CUP_U_B_CZ_WDL_Kneepads",
    "CUP_U_B_CZ_Pilot_WDL",
    "U_IG_Guerilla1_1",
    "U_IG_Guerilla2_1",
    "U_IG_Guerilla2_2",
    "U_IG_Guerilla2_3",
    "U_IG_Guerilla3_1",
    "U_IG_leader",
    "U_IG_Guerrilla_6_1",
    "U_I_G_resistanceLeader_F",
];          //Uniforms given to Normal Rebels

private _rebUniformsAI = [
    "U_B_CombatUniform_mcam_W",
    "U_B_CombatUniform_mcam_tshirt_W",
    "WU_B_T_Soldier_AR_F",
    "WU_B_T_Soldier_F",
    "WU_B_HeliPilotCoveralls",
    "CUP_U_B_CZ_WDL_Kneepads",
    "CUP_U_B_CZ_Pilot_WDL",
    "U_IG_Guerilla1_1",
    "U_IG_Guerilla2_1",
    "U_IG_Guerilla2_2",
    "U_IG_Guerilla2_3",
    "U_IG_Guerilla3_1",
    "U_IG_leader",
    "U_IG_Guerrilla_6_1",];

["uniforms", _rebUniforms + _rebUniformsAI] call _fnc_saveToTemplate;         //These Items get added to the Arsenal

["headgear", [
    "CUP_H_Booniehat_CCE",
    "CUP_H_SLA_Boonie",
    "H_Shemag_olive",
    "H_ShemagOpen_khk",
    "H_Bandanna_khk",
    "H_Cap_grn",
    "H_Beret_blk",

]] call _fnc_saveToTemplate;          //Headgear used by Rebell Ai until you have Armored Headgear.

/////////////////////
///  Identities   ///
/////////////////////

["faces", ["Max_faceWS1","Max_faceWS10","Max_faceWS2","Max_faceWS3","Max_faceWS4","Max_faceWS6","Max_faceWS9","PersianHead_A3_01","WhiteHead_02","GreekHead_A3_03","AfricanHead_03","AsianHead_A3_03","WhiteHead_20","PersianHead_A3_02"]] call _fnc_saveToTemplate;
["voices", ["MALE01ESPA", "CUP_D_Male01_GB_PMC"]] call _fnc_saveToTemplate;

//////////////////////////
//       Loadouts       //
//////////////////////////
private _loadoutData = call _fnc_createLoadoutData;
_loadoutData set ["maps", ["ItemMap"]];
_loadoutData set ["watches", ["ItemWatch"]];
_loadoutData set ["compasses", ["ItemCompass"]];
_loadoutData set ["binoculars", ["Binocular"]];

_loadoutData set ["uniforms", _rebUniformsAI];
_loadoutData set ["facewear", ["None", "GSpectacles", "CUP_TK_NeckScarf"]];

_loadoutData set ["items_medical_basic", ["BASIC"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_medical_standard", ["STANDARD"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_medical_medic", ["MEDIC"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_miscEssentials", [] call A3A_fnc_itemset_miscEssentials];

////////////////////////
//  Rebel Unit Types  //
///////////////////////.

private _squadLeaderTemplate = {
    ["uniforms"] call _fnc_setUniform;
    ["facewear"] call _fnc_setFacewear;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["binoculars"] call _fnc_addBinoculars;
};

private _riflemanTemplate = {
    ["uniforms"] call _fnc_setUniform;
    ["facewear"] call _fnc_setFacewear;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
};

private _prefix = "militia";
private _unitTypes = [
    ["Petros", _squadLeaderTemplate],
    ["SquadLeader", _squadLeaderTemplate],
    ["Rifleman", _riflemanTemplate],
    ["staticCrew", _riflemanTemplate],
    ["Medic", _riflemanTemplate, [["medic", true]]],
    ["Engineer", _riflemanTemplate, [["engineer", true]]],
    ["ExplosivesExpert", _riflemanTemplate, [["explosiveSpecialist", true]]],
    ["Grenadier", _riflemanTemplate],
    ["LAT", _riflemanTemplate],
    ["AT", _riflemanTemplate],
    ["AA", _riflemanTemplate],
    ["MachineGunner", _riflemanTemplate],
    ["Marksman", _riflemanTemplate],
    ["Sniper", _riflemanTemplate],
    ["Unarmed", _riflemanTemplate]
];

[_prefix, _unitTypes, _loadoutData] call _fnc_generateAndSaveUnitsToTemplate;

//agregado a ver si arregla el problema:

["attributesVehicles", [
    ["CUP_O_Hilux_unarmed_TK_CIV", ["rebCost", 600]],
    ["CUP_I_Hilux_M2_IND_G_F", ["rebCost", 1200]],
    
   

    ["C_Quadbike_01_F", ["rebCost", 50]],
    ["CUP_C_Golf4_black_Civ", ["rebCost", 100]],
    ["CUP_C_412", ["rebCost", 2000]]
]] call _fnc_saveToTemplate;class Templates 