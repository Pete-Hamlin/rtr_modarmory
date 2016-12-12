// This is an Unreal Script

class X2Ability_RTRModWeapons extends X2Ability config (RTRModWeapons);

//Config

var config int SMG_CV_MOBILITY;
var config int SMG_MG_MOBILITY;
var config int SMG_BM_MOBILITY;
var config int SMG_LS_MOBILITY;

var config int SMG_CV_DETECTION;
var config int SMG_MG_DETECTION;
var config int SMG_BM_DETECTION;
var config int SMG_LS_DETECTION;

var config int ASSAULTRIFLE_LS_MOBILITY;
var config int CANNON_LS_MOBILITY;
var config int SHOTGUN_LS_MOBILITY;
var config int SNIPERRIFLE_LS_MOBILITY;


static function array<X2DataTemplate> CreateTemplates()
{
	local array<X2DataTemplate> Templates;

	Templates.AddItem(CreateTemplate_StatBonus('SMG_CV_StatBonus', default.SMG_CV_MOBILITY, default.SMG_CV_DETECTION));
	Templates.AddItem(CreateTemplate_StatBonus('SMG_MG_StatBonus', default.SMG_MG_MOBILITY, default.SMG_MG_DETECTION));
	Templates.AddItem(CreateTemplate_StatBonus('SMG_BM_StatBonus', default.SMG_BM_MOBILITY, default.SMG_BM_DETECTION));
	Templates.AddItem(CreateTemplate_StatBonus('SMG_LS_StatBonus', default.SMG_LS_MOBILITY, default.SMG_LS_DETECTION));

	Templates.AddItem(CreateTemplate_StatBonus('AssaultRifle_LS_StatBonus', default.ASSAULTRIFLE_LS_MOBILITY));
	Templates.AddItem(CreateTemplate_StatBonus('Cannon_LS_StatBonus', default.Cannon_LS_MOBILITY));

	return Templates;
}

//Stat bonuses
static function X2AbilityTemplate CreateTemplate_StatBonus(name StatBoostName, int MobilityBoost, optional int DetectionRange)
{
	local X2AbilityTemplate                 Template;
	local X2Effect_PersistentStatChange		PersistentStatChangeEffect;

	`CREATE_X2ABILITY_TEMPLATE(Template, StatBoostName);
	Template.IconImage = "img:///gfxXComIcons.NanofiberVest"; 

	Template.AbilitySourceName = 'eAbilitySource_Item';
	Template.eAbilityIconBehaviorHUD = EAbilityIconBehavior_NeverShow;
	Template.Hostility = eHostility_Neutral;
	Template.bDisplayInUITacticalText = false;

	Template.AbilityToHitCalc = default.DeadEye;
	Template.AbilityTargetStyle = default.SelfTarget;
	Template.AbilityTriggers.AddItem(default.UnitPostBeginPlayTrigger);

	// Bonus to Mobility
	PersistentStatChangeEffect = new class'X2Effect_PersistentStatChange';
	PersistentStatChangeEffect.BuildPersistentEffect(1, true, false, false);
	PersistentStatChangeEffect.SetDisplayInfo(ePerkBuff_Passive, "", "", Template.IconImage, false,,Template.AbilitySourceName);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Mobility, MobilityBoost);
	if (DetectionRange > 0)
	{
		PersistentStatChangeEffect.AddPersistentStatChange(eStat_DetectionModifier, DetectionRange);
	}
	Template.AddTargetEffect(PersistentStatChangeEffect);

	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;

	return Template;
}