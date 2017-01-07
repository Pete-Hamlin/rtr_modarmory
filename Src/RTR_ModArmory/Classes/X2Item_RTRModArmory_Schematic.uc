// This is an Unreal Script

class X2Item_RTRModArmory_Schematic extends X2Item config(RTRModWeapons);

//Config

var config bool ENABLE_SMG;
var config bool ENABLE_LASERS;

var config bool INFINITE_MAG_WEAPONS;
var config bool INFINITE_BEAM_WEAPONS;
var config bool INFINITE_LASER_WEAPONS;

//SMG
var config int SMG_CV2_SUPPLIES;
var config int SMG_CV2_ALLOYS;
var config int SMG_CV2_ELERIUM;
var config int SMG_CV3_SUPPLIES;
var config int SMG_CV3_ALLOYS;
var config int SMG_CV3_ELERIUM;
var config int SMG_CV4_SUPPLIES;
var config int SMG_CV4_ALLOYS;
var config int SMG_CV4_ELERIUM;

var config int SMG_MG1_SUPPLIES;
var config int SMG_MG1_ALLOYS;
var config int SMG_MG1_ELERIUM;
var config int SMG_MG2_SUPPLIES;
var config int SMG_MG2_ALLOYS;
var config int SMG_MG2_ELERIUM;
var config int SMG_MG3_SUPPLIES;
var config int SMG_MG3_ALLOYS;
var config int SMG_MG3_ELERIUM;

var config int SMG_BM1_SUPPLIES;
var config int SMG_BM1_ALLOYS;
var config int SMG_BM1_ELERIUM;
var config int SMG_BM2_SUPPLIES;
var config int SMG_BM2_ALLOYS;
var config int SMG_BM2_ELERIUM;
var config int SMG_BM3_SUPPLIES;
var config int SMG_BM3_ALLOYS;
var config int SMG_BM3_ELERIUM;

var config int SMG_LS1_SUPPLIES;
var config int SMG_LS1_ALLOYS;
var config int SMG_LS1_ELERIUM;
var config int SMG_LS2_SUPPLIES;
var config int SMG_LS2_ALLOYS;
var config int SMG_LS2_ELERIUM;
var config int SMG_LS3_SUPPLIES;
var config int SMG_LS3_ALLOYS;
var config int SMG_LS3_ELERIUM;


//Lasers
var config int ASSAULTRIFLE_LS1_SUPPLIES;
var config int ASSAULTRIFLE_LS1_ALLOYS;
var config int ASSAULTRIFLE_LS1_ELERIUM;
var config int ASSAULTRIFLE_LS2_SUPPLIES;
var config int ASSAULTRIFLE_LS2_ALLOYS;
var config int ASSAULTRIFLE_LS2_ELERIUM;
var config int ASSAULTRIFLE_LS3_SUPPLIES;
var config int ASSAULTRIFLE_LS3_ALLOYS;
var config int ASSAULTRIFLE_LS3_ELERIUM;

var config int CANNON_LS1_SUPPLIES;
var config int CANNON_LS1_ALLOYS;
var config int CANNON_LS1_ELERIUM;
var config int CANNON_LS2_SUPPLIES;
var config int CANNON_LS2_ALLOYS;
var config int CANNON_LS2_ELERIUM;
var config int CANNON_LS3_SUPPLIES;
var config int CANNON_LS3_ALLOYS;
var config int CANNON_LS3_ELERIUM;

var config int SHOTGUN_LS1_SUPPLIES;
var config int SHOTGUN_LS1_ALLOYS;
var config int SHOTGUN_LS1_ELERIUM;
var config int SHOTGUN_LS2_SUPPLIES;
var config int SHOTGUN_LS2_ALLOYS;
var config int SHOTGUN_LS2_ELERIUM;
var config int SHOTGUN_LS3_SUPPLIES;
var config int SHOTGUN_LS3_ALLOYS;
var config int SHOTGUN_LS3_ELERIUM;

var config int SNIPERRIFLE_LS1_SUPPLIES;
var config int SNIPERRIFLE_LS1_ALLOYS;
var config int SNIPERRIFLE_LS1_ELERIUM;
var config int SNIPERRIFLE_LS2_SUPPLIES;
var config int SNIPERRIFLE_LS2_ALLOYS;
var config int SNIPERRIFLE_LS2_ELERIUM;
var config int SNIPERRIFLE_LS3_SUPPLIES;
var config int SNIPERRIFLE_LS3_ALLOYS;
var config int SNIPERRIFLE_LS3_ELERIUM;

var config int PISTOL_LS1_SUPPLIES;
var config int PISTOL_LS1_ALLOYS;
var config int PISTOL_LS1_ELERIUM;
var config int PISTOL_LS2_SUPPLIES;
var config int PISTOL_LS2_ALLOYS;
var config int PISTOL_LS2_ELERIUM;
var config int PISTOL_LS3_SUPPLIES;
var config int PISTOL_LS3_ALLOYS;
var config int PISTOL_LS3_ELERIUM;

//Constructor
static function array<X2DataTemplate> CreateTemplates()
{
	local array<X2DataTemplate> Schematics;

	if (default.ENABLE_SMG == true) {
		Schematics.AddItem(CreateTemplate_Weapon_Schematic('SMG_CV2_Schematic', "img:///Conv_Schematics.AssaultRifle", 'SMG_CV2', 'Conventional_T2', 10, default.SMG_CV2_SUPPLIES, default.SMG_CV2_ALLOYS, default.SMG_CV2_ELERIUM));
		Schematics.AddItem(CreateTemplate_Weapon_Schematic('SMG_CV3_Schematic', "img:///Conv_Schematics.AssaultRifle", 'SMG_CV3', 'Conventional_T3', 15, default.SMG_CV3_SUPPLIES, default.SMG_CV3_ALLOYS, default.SMG_CV3_ELERIUM));
		Schematics.AddItem(CreateTemplate_Weapon_Schematic('SMG_CV4_Schematic', "img:///Conv_Schematics.AssaultRifle", 'SMG_CV4', 'Conventional_T4', 20, default.SMG_CV4_SUPPLIES, default.SMG_CV4_ALLOYS, default.SMG_CV4_ELERIUM));
		
		if (default.INFINITE_MAG_WEAPONS == true) {
			Schematics.AddItem(CreateTemplate_Weapon_Schematic('SMG_MG1_Schematic', "img:///UILibrary_SMG.magnetic.Inv_LWMagSMG", 'SMG_MG1', 'Magnetic_T1', 10, default.SMG_MG1_SUPPLIES, default.SMG_MG1_ALLOYS, default.SMG_MG1_ELERIUM));
			Schematics.AddItem(CreateTemplate_Weapon_Schematic('SMG_MG2_Schematic', "img:///UILibrary_SMG.magnetic.Inv_LWMagSMG", 'SMG_MG2', 'Magnetic_T2', 15, default.SMG_MG2_SUPPLIES, default.SMG_MG2_ALLOYS, default.SMG_MG2_ELERIUM));
			Schematics.AddItem(CreateTemplate_Weapon_Schematic('SMG_MG3_Schematic', "img:///UILibrary_SMG.magnetic.Inv_LWMagSMG", 'SMG_MG3', 'Magnetic_T3', 20, default.SMG_MG3_SUPPLIES, default.SMG_MG3_ALLOYS, default.SMG_MG3_ELERIUM));
		}
		if (default.INFINITE_BEAM_WEAPONS == true) {
			Schematics.AddItem(CreateTemplate_Weapon_Schematic('SMG_BM1_Schematic', "img:///UILibrary_SMG.magnetic.Inv_LWBeamSMG", 'SMG_BM1', 'Plasma_T1', 10, default.SMG_BM1_SUPPLIES, default.SMG_BM1_ALLOYS, default.SMG_BM1_ELERIUM));
			Schematics.AddItem(CreateTemplate_Weapon_Schematic('SMG_BM2_Schematic', "img:///UILibrary_SMG.magnetic.Inv_LWBeamSMG", 'SMG_BM2', 'Plasma_T2', 15, default.SMG_BM2_SUPPLIES, default.SMG_BM2_ALLOYS, default.SMG_BM2_ELERIUM));
			Schematics.AddItem(CreateTemplate_Weapon_Schematic('SMG_BM3_Schematic', "img:///UILibrary_SMG.magnetic.Inv_LWBeamSMG", 'SMG_BM3', 'Plasma_T3', 20, default.SMG_BM2_SUPPLIES, default.SMG_BM2_ALLOYS, default.SMG_BM2_ELERIUM));
		}
		if (default.INFINITE_LASER_WEAPONS == true && default.ENABLE_LASERS == true) {
			Schematics.AddItem(CreateTemplate_Weapon_Schematic('SMG_LS1_Schematic', "img:///UILibrary_LW_LaserPack.Inv_Laser_SMG", 'SMG_LS1', 'Laser_T1', 10, default.SMG_LS1_SUPPLIES, default.SMG_LS1_ALLOYS, default.SMG_LS1_ELERIUM));
			Schematics.AddItem(CreateTemplate_Weapon_Schematic('SMG_LS2_Schematic', "img:///UILibrary_LW_LaserPack.Inv_Laser_SMG", 'SMG_LS2', 'Laser_T2', 15, default.SMG_LS2_SUPPLIES, default.SMG_LS2_ALLOYS, default.SMG_LS2_ELERIUM));
			Schematics.AddItem(CreateTemplate_Weapon_Schematic('SMG_LS3_Schematic', "img:///UILibrary_LW_LaserPack.Inv_Laser_SMG", 'SMG_LS3', 'Laser_T3', 20, default.SMG_LS2_SUPPLIES, default.SMG_LS2_ALLOYS, default.SMG_LS2_ELERIUM));
		}
	}
	if (default.INFINITE_LASER_WEAPONS == true && default.ENABLE_LASERS == true) {
		Schematics.AddItem(CreateTemplate_Weapon_Schematic('AssaultRifle_LS1_Schematic', "img:///UILibrary_LW_LaserPack.Inv_Laser_Assault_Rifle", 'ASSAULTRIFLE_LS1', 'Laser_T1', 10, default.ASSAULTRIFLE_LS1_SUPPLIES, default.ASSAULTRIFLE_LS1_ALLOYS, default.ASSAULTRIFLE_LS1_ELERIUM));
		Schematics.AddItem(CreateTemplate_Weapon_Schematic('AssaultRifle_LS2_Schematic', "img:///UILibrary_LW_LaserPack.Inv_Laser_Assault_Rifle", 'ASSAULTRIFLE_LS2', 'Laser_T2', 15, default.ASSAULTRIFLE_LS2_SUPPLIES, default.ASSAULTRIFLE_LS2_ALLOYS, default.ASSAULTRIFLE_LS2_ELERIUM));
		Schematics.AddItem(CreateTemplate_Weapon_Schematic('AssaultRifle_LS3_Schematic', "img:///UILibrary_LW_LaserPack.Inv_Laser_Assault_Rifle", 'ASSAULTRIFLE_LS3', 'Laser_T3', 20, default.ASSAULTRIFLE_LS3_SUPPLIES, default.ASSAULTRIFLE_LS3_ALLOYS, default.ASSAULTRIFLE_LS3_ELERIUM));
		
		Schematics.AddItem(CreateTemplate_Weapon_Schematic('Cannon_LS1_Schematic', "img:///UILibrary_LW_LaserPack.Inv_Laser_Cannon", 'CANNON_LS1', 'Laser_T1', 10, default.CANNON_LS1_SUPPLIES, default.CANNON_LS1_ALLOYS, default.CANNON_LS1_ELERIUM));
		Schematics.AddItem(CreateTemplate_Weapon_Schematic('Cannon_LS2_Schematic', "img:///UILibrary_LW_LaserPack.Inv_Laser_Cannon", 'CANNON_LS2', 'Laser_T2', 15, default.CANNON_LS2_SUPPLIES, default.CANNON_LS2_ALLOYS, default.CANNON_LS2_ELERIUM));
		Schematics.AddItem(CreateTemplate_Weapon_Schematic('Cannon_LS3_Schematic', "img:///UILibrary_LW_LaserPack.Inv_Laser_Cannon", 'CANNON_LS3', 'Laser_T3', 20, default.CANNON_LS3_SUPPLIES, default.CANNON_LS3_ALLOYS, default.CANNON_LS3_ELERIUM));

		Schematics.AddItem(CreateTemplate_Weapon_Schematic('Shotgun_LS1_Schematic', "img:///UILibrary_LW_LaserPack.Inv_Laser_Shotgun", 'SHOTGUN_LS1', 'Laser_T1', 10, default.SHOTGUN_LS1_SUPPLIES, default.SHOTGUN_LS1_ALLOYS, default.SHOTGUN_LS1_ELERIUM));
		Schematics.AddItem(CreateTemplate_Weapon_Schematic('Shotgun_LS2_Schematic', "img:///UILibrary_LW_LaserPack.Inv_Laser_Shotgun", 'SHOTGUN_LS2', 'Laser_T2', 15, default.SHOTGUN_LS2_SUPPLIES, default.SHOTGUN_LS2_ALLOYS, default.SHOTGUN_LS2_ELERIUM));
		Schematics.AddItem(CreateTemplate_Weapon_Schematic('Shotgun_LS3_Schematic', "img:///UILibrary_LW_LaserPack.Inv_Laser_Shotgun", 'SHOTGUN_LS3', 'Laser_T3', 20, default.SHOTGUN_LS3_SUPPLIES, default.SHOTGUN_LS3_ALLOYS, default.SHOTGUN_LS3_ELERIUM));

		Schematics.AddItem(CreateTemplate_Weapon_Schematic('SniperRifle_LS1_Schematic', "img:///UILibrary_LW_LaserPack.Inv_Laser_Sniper_Rifle", 'SNIPERRIFLE_LS1', 'Laser_T1', 10, default.SNIPERRIFLE_LS1_SUPPLIES, default.SNIPERRIFLE_LS1_ALLOYS, default.SNIPERRIFLE_LS1_ELERIUM));
		Schematics.AddItem(CreateTemplate_Weapon_Schematic('SniperRifle_LS2_Schematic', "img:///UILibrary_LW_LaserPack.Inv_Laser_Sniper_Rifle", 'SNIPERRIFLE_LS2', 'Laser_T2', 15, default.SNIPERRIFLE_LS2_SUPPLIES, default.SNIPERRIFLE_LS2_ALLOYS, default.SNIPERRIFLE_LS2_ELERIUM));
		Schematics.AddItem(CreateTemplate_Weapon_Schematic('SniperRifle_LS3_Schematic', "img:///UILibrary_LW_LaserPack.Inv_Laser_Sniper_Rifle", 'SNIPERRIFLE_LS3', 'Laser_T3', 20, default.SNIPERRIFLE_LS3_SUPPLIES, default.SNIPERRIFLE_LS3_ALLOYS, default.SNIPERRIFLE_LS3_ELERIUM));

		Schematics.AddItem(CreateTemplate_Weapon_Schematic('Pistol_LS1_Schematic', "img:///UILibrary_LW_LaserPack.Inv_Laser_Pistol", 'PISTOL_LS1', 'Laser_T1', 10, default.PISTOL_LS1_SUPPLIES, default.PISTOL_LS1_ALLOYS, default.PISTOL_LS1_ELERIUM));
		Schematics.AddItem(CreateTemplate_Weapon_Schematic('Pistol_LS2_Schematic', "img:///UILibrary_LW_LaserPack.Inv_Laser_Pistol", 'PISTOL_LS2', 'Laser_T2', 15, default.PISTOL_LS2_SUPPLIES, default.PISTOL_LS2_ALLOYS, default.PISTOL_LS2_ELERIUM));
		Schematics.AddItem(CreateTemplate_Weapon_Schematic('Pistol_LS3_Schematic', "img:///UILibrary_LW_LaserPack.Inv_Laser_Pistol", 'PISTOL_LS3', 'Laser_T3', 20, default.PISTOL_LS3_SUPPLIES, default.PISTOL_LS3_ALLOYS, default.PISTOL_LS3_ELERIUM));


	}

	return schematics;
}

static function X2DataTemplate CreateTemplate_Weapon_Schematic(name SchematicName, string SchematicImage, name UpgradeWeap, name RequiredTech, int RequiredEngineers, int SuppliesRequired, int AlloysRequired, int EleriumRequired)
{
	local X2SchematicTemplate Template;
	local ArtifactCost Resources, Artifacts;

	`CREATE_X2TEMPLATE(class'X2SchematicTemplate', Template, SchematicName);

	Template.ItemCat = 'weapon';
	Template.strImage = SchematicImage;
	Template.CanBeBuilt = true;
	Template.bOneTimeBuild = true;
	Template.HideInInventory = true;
	Template.HideInLootRecovered = true;
	Template.PointsToComplete = 0;
	Template.Tier = 1;
	Template.OnBuiltFn = class'X2Item_DefaultSchematics'.static.UpgradeItems;

	// Items to Upgrade
	//Template.ItemsToUpgrade.AddItem('AssaultRifle_CV');
	Template.ReferenceItemTemplate = UpgradeWeap;
	//Template.HideIfPurchased = 'AssaultRifle_CV3';

	// Requirements
	Template.Requirements.RequiredTechs.AddItem(RequiredTech);
	Template.Requirements.RequiredEngineeringScore = RequiredEngineers;
	Template.Requirements.bVisibleIfPersonnelGatesNotMet = true;

	// Cost
	Resources.ItemTemplateName = 'Supplies';
	Resources.Quantity = SuppliesRequired;
	Template.Cost.ResourceCosts.AddItem(Resources);

	Artifacts.ItemTemplateName = 'AlienAlloy';
	Artifacts.Quantity = AlloysRequired;
	Template.Cost.ResourceCosts.AddItem(Artifacts);

	if (EleriumRequired > 0)
	{
		Artifacts.ItemTemplateName = 'EleriumDust';
		Artifacts.Quantity = EleriumRequired;
		Template.Cost.ResourceCosts.AddItem(Artifacts);
	}
	return Template;
}
