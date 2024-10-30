//This is a basic CUP Rebel faction I'm trying to make for our next campaign in AU
//It's meant to be a latin-american civilian-in-arms faction, 
//including female soldiers, spanish radio voiceovers, and a really basic initial arsenal.
//I made it on the base of LRI rebel faction. most of the scripting is a copy of it as it is found in AU's core pbo.


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

["flag", "Flag_BLN"] call _fnc_saveToTemplate;
["flagTexture", QPATHTOFOLDER(Templates\BLN\oktubre.paa)] call _fnc_saveToTemplate;
["flagMarkerType", "a3a_flag_BLN"] call _fnc_saveToTemplate;

//////////////////////////
//       Vehicles       //
//////////////////////////
//Changed Golf by older Volga

["vehiclesBasic", ["C_Quadbike_01_F", "CUP_C_Volha_CR_CIV"]] call _fnc_saveToTemplate;
["vehiclesLightUnarmed", ["CUP_O_Hilux_unarmed_TK_CIV"]] call _fnc_saveToTemplate;
["vehiclesLightArmed", ["CUP_I_Hilux_M2_IND_G_F"]] call _fnc_saveToTemplate;

//Cambiar el camión por otro más choto y no civil para que se justifique que valga la mitad. el praga no estaba mal al final
["vehiclesTruck", ["CUP_C_Ural_Open_Civ_01"]] call _fnc_saveToTemplate;
["vehiclesAT", ["CUP_I_Hilux_SPG9_NAPA"]] call _fnc_saveToTemplate;
["vehiclesAA", ["CUP_I_Ural_ZU23_NAPA", "CUP_I_Hilux_zu23_NAPA"]] call _fnc_saveToTemplate;
["vehiclesBoat", ["I_G_Boat_Transport_01_F"]] call _fnc_saveToTemplate;

["vehiclesPlane", ["CUP_C_DC3_CIV"]] call _fnc_saveToTemplate;                    
["vehiclesCivPlane", ["CUP_C_AN2_CIV", "CUP_C_C47_CIV"]] call _fnc_saveToTemplate;

//cambiar la ambulancia por algo un poco mejor
["vehiclesMedical", ["CUP_C_S1203_Ambulance_CIV"]] call _fnc_saveToTemplate;

["vehiclesCivCar", ["C_Quadbike_01_F", "CUP_C_Volha_CR_CIV"]] call _fnc_saveToTemplate;
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


["lootCrate", ""] call _fnc_saveToTemplate;
["rallyPoint", ""] call _fnc_saveToTemplate;

//animation sources - camo nets, slat cages, decals etc, digit is probability of appearance
//I made this values higher
["animations", [
    ["vehClass", ["animsource_example_1", 0.5, "animsource_example_2", 0.75]]
]] call _fnc_saveToTemplate;

//vehicle skins
["variants", [
    ["vehClass", ["paint", 1]]
]] call _fnc_saveToTemplate;



///////////////////////////
//  Rebel Starting Gear  //
///////////////////////////


private _initialRebelEquipment = [

    "CUP_sgun_CZ584", "CUP_sgun_slamfire", ["CUP_srifle_CZ550", 5],

    "CUP_1Rnd_12Gauge_Pellets_No00_Buck", "CUP_1Rnd_12Gauge_Pellets_No3_Buck", "CUP_5x_22_LR_17_HMR_M", "CUP_6Rnd_45ACP_M", "CUP_1Rnd_762x51_CZ584",
    "CUP_hgun_TaurusTracker455",
    
    ["IEDUrbanSmall_Remote_Mag", 30], ["IEDLandSmall_Remote_Mag", 30], ["IEDUrbanBig_Remote_Mag", 5], ["IEDLandBig_Remote_Mag", 5],

    //I preferred jackets over vests to dissemble the bodies unmatching faces. They should look light, as for tropical climate
    //sumar jackets para paliar la falta de vests
    "CUP_V_OI_TKI_Jacket3_06", "CUP_V_OI_TKI_Jacket5_02", "CUP_V_OI_TKI_Jacket1_03", "CUP_V_OI_TKI_Jacket3_01",

    "B_FieldPack_cbr", "B_FieldPack_khk", "B_FieldPack_oli","CUP_B_AlicePack_OD","B_AssaultPack_rgr","B_AssaultPack_khk",

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

//uniforms are separated in female and male bodies, but by now there seems not to be a way to make them match the faces

["initialRebelEquipment", _initialRebelEquipment] call _fnc_saveToTemplate;

private _frebUniforms =  [
// female uniforms:
    "U_B_CombatUniform_mcam_W",
    "U_B_CombatUniform_mcam_tshirt_W",
    "WU_B_T_Soldier_AR_F",
    "WU_B_T_Soldier_F",
];
// male uniforms:
private _mrebUniforms = [
    "U_IG_Guerilla1_1",
    "U_IG_Guerilla2_1",
    "U_IG_Guerrilla_6_1",
    "U_I_G_resistanceLeader_F"
];          

//I'm  trying to find a way to make
//female heads spawn only on female 
//Uniforms, same with voice.
//I Don't think it's possible,
//as uniforms and Identities are set as a single value each one

private _rebUniformsAI = [ _mrebUniforms + _frebUniforms]
["uniforms", _mrebUniforms + _frebUniforms] call _fnc_saveToTemplate;         //These Items get added to the Arsenal

["headgear", [
    "CUP_H_Booniehat_CCE",
    "CUP_H_SLA_Boonie",
    "H_Shemag_olive",
    "H_ShemagOpen_khk",
    "H_Bandanna_khk",
    "H_Cap_grn",
    "H_Beret_blk"

]] call _fnc_saveToTemplate;          //Headgear used by Rebel Ai until you have Armored Headgear.

/////////////////////
///  Identities   ///
/////////////////////

//I added english female voice, spanish voice, and male greek English voices 
//Spanish voice is not working by now

//Tengo que buscar voces que suenen andróginas

["faces", ["Max_faceWS1","Max_faceWS10","Max_faceWS2","Max_faceWS3","Max_faceWS4","Max_faceWS6","Max_faceWS9","PersianHead_A3_01","WhiteHead_02","GreekHead_A3_03","AfricanHead_03","AsianHead_A3_03","WhiteHead_20","PersianHead_A3_02"]] call _fnc_saveToTemplate;
["voices", ["MALE01ESPA", "CUP_D_Female01_D_EN", "Male05GRE", "Male06GRE"]] call _fnc_saveToTemplate;

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