
/datum/job/oathbound
	title = "Oathbound"
	flag = OATHBOUND
	department = DEPARTMENT_CHURCH
	department_flag = CHURCH
	faction = MAP_FACTION
	total_positions = 4
	spawn_positions = 4
	supervisors = "the Oathpledge"
	difficulty = "Easy to Medium."
	selection_color = "#ecd37d"
	access = list(access_morgue, access_crematorium, access_maint_tunnels, access_bonfire_disciple)

	initial_balance = INIT_BALANCE_MENIAL
	wage = WAGE_LABOUR
	outfit_type = /decl/hierarchy/outfit/job/custodians/oathbound
	security_clearance = CLEARANCE_COMMON
	health_modifier = 10
	stat_modifiers = list(
		STAT_COG = 10,
		STAT_TGH = 30,
		STAT_ROB = 30,
	)

	core_upgrades = list(
		HEARTHCORE_OATHBOUND,
		HEARTHCORE_CUSTODIAN,
	)

	perks = list(PERK_RADIANCE)

	description = "The Oathbounds are the combat units, footsoldiers of purity that burn down the plague inside and outside the colony, along with mutants and antagonistic entities that defy their dogmas.<br>\
    Oathbounds can supply their forces in expeditions and help change the tide of battle with their high defensive capabilities and overall toughness in the frontlines, keeping the flimsy gun-users behind and protected, or ignite them on accident - to the disdain of their Oathpledge.<br>\
    Oathbounds are meant to be well trained and reflect the strength of people in the times of old, when society did not weaken it's people, so one must act like such (See: Oaths and Custodian culture). They are not allowed to use firearms like all other custodians, but their blades, staves and throwing weapons of enhanced rudimentary technology proves highly competitive against the most common technology.<br>\
    Oathbounds should work the machinery and provide the colony with Custodian products of textile and protective nature, but only non-igniting weapons can be sold."

	duties = "Cleanse the insectoid plague from the halls and maintenance tunnels, but take care not to harm the Cht'mant next door.<br>\
	Ensure that there's no religious entity putting Oathbounds's free will at risk, spread philosophical ideas around the colony.<br>\
	Help other custodian roles to the best of your abilities as much as they help you, ask the Enkindled for their strongest potions, work the Bonfire and produce many textile and armor products to help the economy."

	setup_restricted = TRUE

/obj/landmark/join/start/oathbound
	name = "Oathbound"
	icon_state = "player-black"
	join_tag = /datum/job/oathbound
