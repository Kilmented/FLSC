
/datum/job/enkindled
	title = "Enkindled"
	flag = ENKINDLED
	department = DEPARTMENT_CHURCH
	department_flag = CHURCH
	faction = MAP_FACTION
	total_positions = 2
	spawn_positions = 2
	supervisors = "the Oathpledge"
	difficulty = "Easy to Medium."
	selection_color = "#ecd37d"
	access = list(access_morgue, access_crematorium, access_maint_tunnels, access_bonfire_disciple)

	initial_balance = INIT_BALANCE_MENIAL
	wage = WAGE_LABOUR
	outfit_type = /decl/hierarchy/outfit/job/custodians/enkindled
	security_clearance = CLEARANCE_COMMON
	health_modifier = 10
	stat_modifiers = list(
		STAT_BIO = 30,
		STAT_TGH = 20,
		STAT_ROB = 20,
	)

	core_upgrades = list(
		HEARTHCORE_ENKINDLED,
		HEARTHCORE_CUSTODIAN,
	)

	perks = list(PERK_RADIANCE) //   /*PERK_APOTHECARY*/  Perk is still a WIP, leaving it prepared here for when all is coded.

	description = "The Enkindled are the blood transmuters specialized in the proto-science of traditions of biology - with the revolutionary custodian spin.<br>\
    The Enkindled are not proficient in surgery and lack the tools for it, but they are able to produce many different elixirs from the corpses of fallen creatures with varying effects - from healing tinctures, throwable flasks, poison needles, combat enhancers and status potions.<br>\
    Be aware, potions can be too strong to Oathbounds about to head into battle, in fact, many potions also possess negative qualities that the Oathbounds must be aware of before combat.<br>\
	Hearthcore users cannot be cloned, so it falls to the Enkindled to bring them back to life with their Hearthcore, reborn with the neural nature of the radiance, bringing their brain back to life and allowing further organ revival to take place.<br>\
    Enkindled are known for being somewhat mentally derailed  - in a good and bad way. They are more than capable of recovering the sanity of others as much as they heal, with the last possibly causing sanity damage."

	duties = "Provide medical support to other Oathbounds in battle and in rest - but do not get in the way of CAPSA. <br>\
	Provide sanity recovery and enhancing services to those you deem fit.<br>\
	Produce strong potions and don't sell it to ingenuous Oathbounds, throw a flask at a roach and watch it become an acidic glop for fun"

	setup_restricted = TRUE

/obj/landmark/join/start/enkindled
	name = "Enkindled"
	icon_state = "player-black"
	join_tag = /datum/job/enkindled

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
