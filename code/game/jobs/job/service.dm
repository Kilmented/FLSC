/datum/job/clubmanager
	title = "Club Manager"
	flag = CLUBMANAGER
	head_position = 1
	department = DEPARTMENT_SERVICE
	department_flag = SERVICE | COMMAND
	faction = MAP_FACTION
	total_positions = 1
	spawn_positions = 1
	supervisors = "Money."
	difficulty = "Medium."
	alt_titles = list("Chief Sales Officer", "Pusher", "Sales Manager")
	selection_color = "#dddddd"
	access = list(access_merchant, access_janitor, access_hydroponics, access_bar, access_kitchen, access_heads, access_cargo, access_RC_announce, access_keycard_auth, access_tcomsat, access_ai_upload)

	initial_balance = INIT_BALANCE_COMMAND
	wage = WAGE_COMMAND

	department_account_access = TRUE
	playtimerequired = 1200
	stat_modifiers = list(
		STAT_ROB = 15,
		STAT_TGH = 15,
		STAT_VIG = 15,
	)

	perks = list(PERK_MARKET_PROF, PERK_COMMON_SENSE)

	outfit_type = /decl/hierarchy/outfit/job/service/clubmanager //Re-using this.
	description = "The Bartender runs the colony bar, providing colonists with drinks and entertainment.<br>\
	Working with the Chef and Gardener, you make the big decisions. Run your business well - perhaps seek to maximise profits.<br>\
	Although tips are a good source of income, your wider business acumen will truly decide your prosperity here."

	duties = "Run the bar - provide a safe haven for food, drinks, and entertainment.<br>\
		Seek extra sources of income from the venue - perhaps run deals or trade secrets.<br>\
		Potentially take over cooking duties if a Chef is not present."

/obj/landmark/join/start/clubmanager
	name = "Club Manager"
	icon_state = "player-grey"
	join_tag = /datum/job/clubmanager

/datum/job/fixer
	title = "Fixer"
	flag = FIXER
	department = DEPARTMENT_SERVICE
	department_flag = SERVICE
	faction = MAP_FACTION
	total_positions = 2
	spawn_positions = 2
	supervisors = "the Club Manager"
	difficulty = "Easy."
	alt_titles = list("Sales Technician", "Trade Router", "Smuggler")
	selection_color = "#dddddd"
	access = list(access_cargo, access_janitor)

	initial_balance = INIT_BALANCE_MENIAL //Got department account access now
	wage = WAGE_LABOUR_DUMB //They should get paid by making food.

	department_account_access = TRUE
	stat_modifiers = list(
		STAT_ROB = 10,
		STAT_TGH = 10,
	)

	perks = list(PERK_MARKET_PROF, PERK_COMMON_SENSE)

	outfit_type = /decl/hierarchy/outfit/job/service/fixer
	description = "The Fixer oversees sales within the cargo-wing of Skylight and aids the service side in daily operations as requested.<br>\
	You will typically work closely with the Club Workers, keeping order, cleaning, and perhaps entertaining.<br>\
	You are paid mainly through handling sales, providing aid to Club workers as requested, and other means deemed acceptable by the Club manager."

	duties = "Handle trades, requests, and sales within Cargo.<br>\
		Help club staff in keeping customers entertained and catered to.<br>\
		Take on odd jobs and pull connections to get people what they need securely."

/obj/landmark/join/start/fixer
	name = "Fixer"
	icon_state = "player-grey"
	join_tag = /datum/job/fixer
