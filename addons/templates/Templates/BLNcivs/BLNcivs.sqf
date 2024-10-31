#include "..\..\script_component.hpp"

//////////////////////////
//       Vehicles       //
//////////////////////////    

["vehiclesCivCar", [


     "CUP_C_TT650_RU" , 0.7
	,"CUP_C_TT650_TK_CIV" , 0.7
	,"CUP_C_TT650_CIV" , 0.7
	,"CUP_C_Bus_City_CIV" , 0.3
	,"CUP_C_S1203_CIV" , 0.5
	,"CUP_C_Volha_Gray_TKCIV" , 0.8
	,"CUP_C_Volha_Blue_TKCIV" , 0.8
	,"CUP_C_Volha_Limo_TKCIV" , 0.8
	,"CUP_O_Hilux_unarmed_TK_CIV" , 0.3
	,"CUP_O_Hilux_unarmed_TK_CIV_Red" , 0.3
	,"CUP_O_Hilux_unarmed_TK_CIV_Tan" , 0.3
	,"CUP_O_Hilux_unarmed_TK_CIV_White" , 0.3
	,"CUP_C_Ikarus_TKC" , 0.4
	,"CUP_C_Bus_City_TKCIV" , 0.3
	,"CUP_C_LR_Transport_CTK" , 0.4
	,"CUP_C_SUV_TK" , 0.4
	,"CUP_C_UAZ_Unarmed_TK_CIV" , 0.7
	,"CUP_C_UAZ_Open_TK_CIV" , 0.7
	,"CUP_C_Lada_TK_CIV" , 0.7
	,"CUP_C_Lada_GreenTK_CIV" , 0.7
	,"CUP_C_Datsun_Covered" , 0.7
	,"CUP_C_Skoda_CR_CIV" , 0.7
	,"CUP_C_Skoda_Blue_CIV" , 0.8
	,"CUP_C_Skoda_Green_CIV" , 0.2
	,"CUP_C_Skoda_Red_CIV" , 0.7
	,"CUP_C_Skoda_White_CIV" , 0.7
	,"CUP_C_S1203_CIV_CR" , 0.5
	,"CUP_C_Datsun_Plain" , 0.7
	,"CUP_C_Datsun_Tubeframe" , 0.7
	,"CUP_C_Volha_CR_CIV" , 0.7
	,"CUP_O_Hilux_unarmed_CR_CIV" , 0.3
	,"CUP_O_Hilux_unarmed_CR_CIV_Red" , 0.3
	,"CUP_O_Hilux_unarmed_CR_CIV_Tan" , 0.3
	,"CUP_O_Hilux_unarmed_CR_CIV_White" , 0.3
	,"CUP_C_Golf4_red_Civ" , 0.4
	,"CUP_C_Golf4_Sport_CR_Civ" , 0.3
	,"CUP_C_Golf4_CR_Civ" , 0.5
	,"CUP_C_Bus_City_CRCIV" , 0.3
	,"CUP_C_SUV_CIV" , 0.4
	,"CUP_C_Lada_CIV" , 0.7
	,"CUP_C_Lada_Red_CIV" , 0.7
	,"CUP_C_Lada_White_CIV" , 0.7
	,"CUP_C_Datsun" , 0.8
	,"CUP_C_Datsun_4seat" , 0.6
	,"CUP_C_Golf4_black_Civ" , 0.5
	,"CUP_C_Golf4_blue_Civ" , 0.5
	,"CUP_C_Golf4_green_Civ" , 0.1
	,"CUP_C_Golf4_camodark_Civ" , 0.1
	,"CUP_C_Golf4_camodigital_Civ" , 0.1
	,"CUP_C_Golf4_camo_Civ" , 0.1
	,"CUP_C_Golf4_crowe_Civ" , 0.1
	,"CUP_C_Golf4_whiteblood_Civ" , 0.1
	,"CUP_C_Golf4_white_Civ" , 0.3
	,"CUP_C_Golf4_yellow_Civ" , 0.4
	,"CUP_C_Golf4_reptile_Civ" , 0.1
	,"CUP_C_Golf4_random_Civ" , 0.1
	,"CUP_C_Golf4_Sport_random_Civ" , 0.1
	,"CUP_C_Pickup_unarmed_CIV" , 0.7
	,"CUP_C_Octavia_CIV" , 0.5
	,"CUP_I_TT650_NAPA" , 0.3
	,"CUP_I_TT650_TKA" , 0.3

    , "C_Quadbike_01_F", 0.2
    , "CUP_C_Ikarus_Chernarus", 0.05
    , "C_Kart_01_F", 0.02
    , "C_Offroad_01_F", 0.2
    , "a3a_Offroad_01_comms_tan_F", 0.05
    , "a3u_cup_uaz_unarmed_convertible_1", 0.5

]] call _fnc_saveToTemplate;             //this line determines civilian cars -- Example: ["vehiclesCivCar", ["C_Offroad_01_F"]] -- Array, can contain multiple assets

["vehiclesCivIndustrial", [

	"CUP_C_Ural_Open_Civ_01" , 0.2
	,"CUP_C_Ural_Open_Civ_02" , 0.2
	,"CUP_C_Ural_Civ_02" , 0.2
	,"CUP_C_V3S_Open_TKC" , 0.5
	,"CUP_C_V3S_Covered_TKC" , 0.3
	,"CUP_C_Ural_Civ_01" , 0.2
	,"CUP_C_Tractor_CIV" , 0.2
	,"CUP_C_Tractor_Old_CIV" , 0.3
	,"CUP_C_TowingTractor_CIV" , 0.01
	,"CUP_I_Tractor_UN" , 0.2


    , "a3a_Van_02_black_service_F", 0.2
    , "C_Van_01_box_F", 0.2
    , "C_Van_01_transport_F", 0.3
    , "O_Truck_02_covered_F", 0.1
    
    
]] call _fnc_saveToTemplate;             //this line determines civilian trucks -- Example: ["vehiclesCivIndustrial", ["C_Truck_02_transport_F"]] -- Array, can contain multiple assets


["vehiclesCivBoat", [

      "CUP_C_Fishing_Boat_Chernarus", 0.2
    , "CUP_C_PBX_CIV", 0.7
    , "CUP_C_Zodiac_CIV", 0.7

]] call _fnc_saveToTemplate;             //this line determines civilian boats -- Example: ["vehiclesCivBoat", ["C_Boat_Civil_01_F"]] -- Array, can contain multiple assets

["vehiclesCivRepair", [

      "C_Truck_02_box_F", 0.1
    , "C_Offroad_01_repair_F", 0.1

]] call _fnc_saveToTemplate;            //this line determines civilian repair vehicles

["vehiclesCivMedical", [

      "CUP_C_S1203_Ambulance_CIV", 0.2

]] call _fnc_saveToTemplate;        //this line determines civilian medic vehicles

["vehiclesCivFuel", [

	"CUP_O_Ural_Refuel_SLA" , 0.1
	,"CUP_O_Ural_Refuel_RU" , 0.1
	,"CUP_I_V3S_Refuel_TKG" , 0.1

    , "C_Truck_02_fuel_F", 0.1
    , "C_Van_01_fuel_F", 0.1
    , "CUP_O_V3S_Refuel_TKM", 0.1

]]

["vehiclesCivHeli", [

	"CUP_C_MI6A_RU"
	,"CUP_C_MI6T_RU"
	,"CUP_C_Mi17_Civilian_RU"
	,"CUP_C_Mi17_VIV_RU"
	,"CUP_C_SA330_Puma_HC1_ChernAvia"
	,"CUP_C_412"
	,"CUP_C_412_Sheriff"
	,"CUP_C_412_Luxury"
	,"CUP_C_412_Medic"
	,"CUP_C_CG_412_Medic"
	,"CUP_C_M_412_Medic"
	,"CUP_C_Merlin_HC3_CIV_Lux"
	,"CUP_C_Merlin_HC3_CIV_Rescue"

]] call _fnc_saveToTemplate;             //this line determines civilian helis -- Example: ["vehiclesCivHeli", ["C_Heli_Light_01_civil_F"]] -- Array, can contain multiple assets


_addon set ["vehiclesCivPlanes", [
	"CUP_C_C47_CIV"
	,"CUP_C_Plane_Orbit"
	,"CUP_C_DC3_CIV"
	,"CUP_C_DC3_TanoAir_CIV"	
	,"CUP_C_DC3_ChernAvia_CIV"	
	,"CUP_C_AN2_AEROSCHROT_TK_CIV"
	,"CUP_C_AN2_AIRTAK_TK_CIV"
	,"CUP_C_AN2_CIV"
	,"CUP_C_A300_CIV" //Ambient
	,"CUP_C_B737_CIV" //Ambient
	,"CUP_C_Cessna_172_CIV_BLUE" //Ambient
	,"CUP_C_Cessna_172_CIV_GREEN" //Ambient
	,"CUP_C_Cessna_172_CIV" //Ambient
	,"CUP_C_CESSNA_CIV" //Ambient
]];
///Ambient means bad or no interior




/////////////////////////////////
///  Identities and currency  ///
////////////////////////////////

["currencySymbol", "$"] call _fnc_saveToTemplate;

["faces", [

    "Max_faceWS1",
    "Max_faceWS10",
    "Max_faceWS2",
    "Max_faceWS3",
    "Max_faceWS4",
    "Max_faceWS6",
    "Max_faceWS9",
    "PersianHead_A3_01",
    "PersianHead_A3_02"
    "GreekHead_A3_03",
    "AfricanHead_01",
    "AfricanHead_03",
    "AsianHead_A3_03",
    "WhiteHead_20",
    "WhiteHead_20",
    "WhiteHead_02"    


]] call _fnc_saveToTemplate;

//////////////////////////
//       Loadouts       //
//////////////////////////

private _civUniforms = [

    "WU_B_HeliPilotCoveralls",
    "U_C_Poor_1",
    "U_I_C_Soldier_Bandit_2_F",
    "U_I_C_Soldier_Bandit_5_F",
    "U_C_Man_casual_5_F",
    "U_C_Man_casual_1_F",
    "U_C_Uniform_Farmer_01_F",
    "max_female_U",
    "CUP_U_C_Priest_01",
    "CUP_O_TKI_Khet_Jeans_03",
    "CUP_O_TKI_Khet_Partug_05",
    "CUP_O_TKI_Khet_Partug_07",
    "CUP_U_C_Mechanic_01",
    "CUP_U_C_Tracksuit_01",
    "CUP_U_C_Villager_01",
    "CUP_U_C_Villager_04",
    "CUP_U_C_Villager_02",
    "CUP_U_C_Villager_03",
    "CUP_U_C_Worker_03",
    "CUP_U_C_Worker_02",
    "CUP_U_C_Worker_01",
    "U_C_ArtTShirt_01_v2_F"

];          //Uniforms given to Normal Civs

private _pressUniforms = [

    "U_C_Uniform_Scientist_01_F",
    "U_C_FormalSuit_01_tshirt_black_F"


];            //Uniforms given to Press/Journalists

private _workerUniforms = [

    "WU_B_HeliPilotCoveralls",
    "U_C_Uniform_Farmer_01_F",
    "CUP_U_C_Fireman_01",
    "CUP_U_C_Labcoat_02",
    "CUP_U_C_Mechanic_01",
    "CUP_U_C_Villager_01",
    "CUP_U_C_Villager_04",
    "CUP_U_C_Villager_02",
    "CUP_U_C_Villager_03",
    "CUP_U_C_Worker_03",
    "CUP_U_C_Worker_02",
    "CUP_U_C_Worker_01",
    "U_C_ConstructionCoverall_Blue_F",
    "U_C_ConstructionCoverall_Black_F",
    "U_C_ConstructionCoverall_Red_F"


];           //Uniforms given to Workers at Factories/Resources


["uniforms", _civUniforms + _pressUniforms + _workerUniforms] call _fnc_saveToTemplate;          //Uniforms given to the Arsenal, Allowed for Undercover and given to Rebel Ai that go Undercover

_civhats = [
     "None",
     "CUP_H_C_Beret_03", 
     "CUP_H_PMC_Cap_Burberry",  
     "H_Cap_surfer", 
     "H_Hat_Safari_sand_F"
     
    ];

["headgear", _civHats] call _fnc_saveToTemplate;            //Headgear given to Normal Civs, Workers, Undercover Rebels.

private _loadoutData = call _fnc_createLoadoutData;

_loadoutData set ["uniforms", _civUniforms];
_loadoutData set ["pressUniforms", _pressUniforms];
_loadoutData set ["workerUniforms", _workerUniforms];
_loadoutData set ["pressVests", []];
_loadoutData set ["helmets", _civHats];
_loadoutData set ["pressHelmets", []];

_loadoutData set ["maps", ["ItemMap"]];
_loadoutData set ["watches", ["ItemWatch"]];
_loadoutData set ["compasses", ["ItemCompass"]];


private _manTemplate = {
    ["helmets"] call _fnc_setHelmet;
    ["uniforms"] call _fnc_setUniform;

    ["items_medical_standard"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
};
private _workerTemplate = {
    ["helmets"] call _fnc_setHelmet;
    ["workerUniforms"] call _fnc_setUniform;

    ["items_medical_standard"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
};
private _pressTemplate = {
    ["pressHelmets"] call _fnc_setHelmet;
    ["pressVests"] call _fnc_setVest;
    ["pressUniforms"] call _fnc_setUniform;

    ["items_medical_standard"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
};
private _prefix = "militia";
private _unitTypes = [
    ["Press", _pressTemplate],
    ["Worker", _workerTemplate],
    ["Man", _manTemplate]
];

[_prefix, _unitTypes, _loadoutData] call _fnc_generateAndSaveUnitsToTemplate;