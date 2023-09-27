
/datum/job/shipbreaker
	title = "Shipbreaker"
	flag = SHIPBREAKER
	department = DEPARTMENT_PROSPECTOR
	department_flag = PROSPECTORS
	faction = MAP_FACTION
	total_positions = 3
	spawn_positions = 2
	supervisors = "the Field Shepherd"
	difficulty = "Medium."
/*	noob_name = "Rookie Shipbreaker" */
	alt_titles = list("Rookie Shipbreaker")
	selection_color = "#a7bbc6"
	initial_balance = INIT_BALANCE_HAZARD
	wage = WAGE_NONE

	outfit_type = /decl/hierarchy/outfit/job/shipbreaker
	health_modifier = 10

	access = list(
		access_fontaine, access_external_airlocks, access_eva, access_maint_tunnels
	)

	stat_modifiers = list(
		STAT_TGH = 20,
		STAT_VIG = 20,
		STAT_ROB = 20,
		STAT_COG = 10
	)

	perks = list(PERK_STALKER, PERK_JUNKBORN)

	description = "The Shipbreaker serves as hired muscle to the Field Shepard, positioned somewhere between meat shield and salvager.<br>\
	Your job is to keep the your co-workers safe and anyone else with you protected, handling the fighting and gathering all that you can for selling. <br>\
	Your primary goal is to provide protection for co-workers while in the wilds and gather all the loot possible from outside the colony, or search in non-owned areas for loot."

	duties = "Guard your peers from hostile creatures and other dangers that cross your path.<br>\
	Use whatever measures necessary to ensure survival, but try not to soil the standing of your team.<br>\
	Help with the more general salvaging and heavy lifting."

/obj/landmark/join/start/shipbreaker
	name = "Shipbreaker"
	icon_state = "player-blue"
	join_tag = /datum/job/shipbreaker
