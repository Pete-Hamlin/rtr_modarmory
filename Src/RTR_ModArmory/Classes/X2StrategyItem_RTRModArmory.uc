class X2StrategyElement_RTRModArmory extends X2StrategyElement_DefaultTechs config(RTRModWeapons);

//Config
var config bool T3_ELERIUM_REQUIRED;

var config int LS1_ALLOYS_COST;
var config int LS1_ELERIUM_COST;
var config name LS1_CORPSE;
var config int LS1_CORPSE_AMOUNT;
var config int LS2_ALLOYS_COST;
var config int LS2_ELERIUM_COST;
var config name LS2_CORPSE;
var config int LS2_CORPSE_AMOUNT;
var config int LS3_ALLOYS_COST;
var config int LS3_ELERIUM_COST;
var config name LS3_CORPSE;
var config int LS3_CORPSE_AMOUNT;

static function array<X2DataTemplate> CreateTemplates()
{
	local array<X2DataTemplate> Techs;

	if (class'X2Item_RTRModArmory_schematic'.default.ENABLE_LASERS == true)
	{
		//Laser
		Techs.AddItem(CreateTechTemplate('Laser_T1', 6000, "img:///UILibrary_LW_LaserPack.TECH_LaserWeapons", 'ModularWeapons', default.LS1_ALLOYS_COST, default.LS1_ELERIUM_COST, default.LS1_CORPSE, default.LS1_CORPSE_AMOUNT, 1));
		Techs.AddItem(CreateTechTemplate('Laser_T2', 7500, "img:///UILibrary_LW_LaserPack.TECH_AdvancedLaserWeapons", 'Laser_T1', default.LS2_ALLOYS_COST, default.LS2_ELERIUM_COST, default.LS2_CORPSE, default.LS2_CORPSE_AMOUNT, 2));
		Techs.AddItem(CreateTechTemplate('Laser_T3', 9000, "img:///UILibrary_StrategyImages.ScienceIcons.IC_LaserWeapons", 'Laser_T2', default.LS3_ALLOYS_COST, default.LS3_ELERIUM_COST, default.LS3_CORPSE, default.LS3_CORPSE_AMOUNT, 3));
	}

	return Techs;
}

static function X2DataTemplate CreateTechTemplate(name TechName, int Time, string TechImage, name RequiredTech, optional int AlloyCost, optional int EleriumCost, optional name Corpse, optional int CorpseAmount, optional int Tier)
{
	local X2TechTemplate Template;
	local ArtifactCost Resources;

	`CREATE_X2TEMPLATE(class'X2TechTemplate', Template, TechName);
	Template.PointsToComplete = Time;
	Template.SortingTier = 1;
	Template.strImage = TechImage;

	// Requirements
	Template.Requirements.RequiredTechs.AddItem(RequiredTech);
	if ((Tier == 3 ) && (default.T3_ELERIUM_REQUIRED == true))
	{
		Template.Requirements.RequiredTechs.AddItem('Tech_Elerium');
	}
	if (AlloyCost > 0)
	{
		Resources.ItemTemplateName = 'ALienAlloy';
		Resources.Quantity = AlloyCost;
		Template.Cost.ResourceCosts.AddItem(Resources);
	}
	if (EleriumCost > 0)
	{
		Resources.ItemTemplateName = 'EleriumDust';
		Resources.Quantity = EleriumCost;
		Template.Cost.ResourceCosts.AddItem(Resources);
	}
	if (CorpseAmount > 0)
	{
		Resources.ItemTemplateName = Corpse;
		Resources.Quantity = CorpseAmount;
		Template.Cost.ResourceCosts.AddItem(Resources);
	}
	return Template;
}