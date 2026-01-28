/datum/job/watch_guard
	title = "Town Watch Guard"
	tutorial = "You are a member of the Town Watch. \
	You patrol streets, guard gates and buildings, respond to disturbances, \
	and uphold the laws of Rivermist Hollow."
	department_flag = TOWNWATCH
	job_flags = (JOB_ANNOUNCE_ARRIVAL | JOB_SHOW_IN_CREDITS | JOB_EQUIP_RANK | JOB_NEW_PLAYER_JOINABLE)
	display_order = JDO_WATCH_GUARD
	faction = FACTION_TOWN
	total_positions = 8
	spawn_positions = 8
	bypass_lastclass = TRUE

	allowed_ages = list(AGE_ADULT, AGE_MIDDLEAGED, AGE_OLD, AGE_IMMORTAL)
	allowed_races = ALL_RACES_LIST
	selection_color = JCOLOR_TOWNWATCH

	advclass_cat_rolls = list(CAT_WATCHMAN = 20)

	give_bank_account = 30

	exp_type = list(EXP_TYPE_LIVING)
	exp_types_granted = list(EXP_TYPE_GARRISON, EXP_TYPE_COMBAT)
	exp_requirements = list(
		EXP_TYPE_LIVING = 300
	)

	job_bitflag = BITFLAG_GARRISON

/datum/job/watch_guard/after_spawn(mob/living/carbon/human/spawned, client/player_client)
	. = ..()
	spawned.verbs |= /mob/proc/haltyell


////////////////////////////////////////
// ADVCLASS BASE – WATCH GUARD //
////////////////////////////////////////

/datum/job/advclass/watch_guard
	exp_types_granted = list(EXP_TYPE_GARRISON, EXP_TYPE_COMBAT)


//////////////////////////////////
// BULWARK //
//////////////////////////////////

/datum/job/advclass/watch_guard/bulwark
	title = "Town Watch Bulwark"
	tutorial = "You serve as the shield of the Town Watch. \
	Trained to hold chokepoints, endure riots, and protect others behind your guard, \
	you are the steady wall against chaos."
	category_tags = list(CAT_WATCHMAN)

	jobstats = list(
		STATKEY_STR = 2,
		STATKEY_END = 2,
		STATKEY_CON = 2
	)

	skills = list(
		/datum/skill/combat/axesmaces = 3,
		/datum/skill/combat/shields = 3,
		/datum/skill/combat/swords = 2,
		/datum/skill/combat/knives = 2,
		/datum/skill/combat/wrestling = 3,
		/datum/skill/combat/unarmed = 4,
		/datum/skill/misc/swimming = 2,
		/datum/skill/misc/climbing = 3,
		/datum/skill/misc/athletics = 4,
		/datum/skill/misc/sneaking = 2,
		/datum/skill/misc/reading = 1
	)

	traits = list(
		TRAIT_HEAVYARMOR,
		TRAIT_MEDIUMARMOR,
		TRAIT_KNOWBANDITS
	)


//////////////////////////////////
// HALBERDIER //
//////////////////////////////////

/datum/job/advclass/watch_guard/halberdier
	title = "Town Watch Halberdier"
	tutorial = "You wield long weapons to control space and repel attackers. \
	Deadly in formation, \
	you are essential at gates, bridges, and narrow streets."
	category_tags = list(CAT_WATCHMAN)

	jobstats = list(
		STATKEY_STR = 2,
		STATKEY_END = 1,
		STATKEY_CON = 2,
		STATKEY_SPD = -1
	)

	skills = list(
		/datum/skill/combat/polearms = 3,
		/datum/skill/combat/swords = 2,
		/datum/skill/combat/axesmaces = 2,
		/datum/skill/combat/knives = 2,
		/datum/skill/combat/wrestling = 3,
		/datum/skill/combat/unarmed = 3,
		/datum/skill/misc/swimming = 2,
		/datum/skill/misc/climbing = 3,
		/datum/skill/misc/athletics = 4,
		/datum/skill/misc/reading = 1
	)

	traits = list(
		TRAIT_MEDIUMARMOR,
		TRAIT_KNOWBANDITS
	)


//////////////////////////////
// SENTINEL //
//////////////////////////////

/datum/job/advclass/watch_guard/sentinel
	title = "Town Watch Sentinel"
	tutorial = "You are trained to watch from above. \
	From walls, towers, and rooftops, you provide overwatch, \
	early warning, and ranged suppression during unrest or attacks."
	category_tags = list(CAT_WATCHMAN)

	jobstats = list(
		STATKEY_PER = 2,
		STATKEY_END = 1,
		STATKEY_SPD = 2
	)

	skills = list(
		/datum/skill/combat/bows = 3,
		/datum/skill/combat/crossbows = 3,
		/datum/skill/combat/firearms = 3,
		/datum/skill/combat/axesmaces = 3,
		/datum/skill/combat/knives = 2,
		/datum/skill/combat/swords = 1,
		/datum/skill/combat/wrestling = 2,
		/datum/skill/combat/unarmed = 2,
		/datum/skill/misc/swimming = 2,
		/datum/skill/misc/climbing = 4,
		/datum/skill/misc/athletics = 3,
		/datum/skill/misc/sneaking = 2,
		/datum/skill/misc/reading = 1
	)

	traits = list(
		TRAIT_DODGEEXPERT,
		TRAIT_KNOWBANDITS
	)
