/datum/job/watch_veteran
	title = "Watch Veteran"
	tutorial = "You are a seasoned veteran of the Town Watch. \
	Years of patrols, riots, night watches, and close calls have hardened you. \
	You train new watchmen, steady patrols in dangerous moments, and serve as an example of discipline. \
	You are not in command — but when trouble starts, others look to you."
	department_flag = TOWNWATCH
	job_flags = (JOB_ANNOUNCE_ARRIVAL | JOB_SHOW_IN_CREDITS | JOB_EQUIP_RANK | JOB_NEW_PLAYER_JOINABLE)
	display_order = JDO_WATCH_VETERAN
	faction = FACTION_TOWN
	total_positions = 1
	spawn_positions = 1
	bypass_lastclass = TRUE

	allowed_ages = list(AGE_MIDDLEAGED, AGE_OLD, AGE_IMMORTAL)
	allowed_races = ALL_RACES_LIST
	selection_color = JCOLOR_TOWNWATCH

	give_bank_account = 45

	exp_type = list(EXP_TYPE_LIVING)
	exp_types_granted = list(EXP_TYPE_GARRISON, EXP_TYPE_COMBAT)
	exp_requirements = list(
		EXP_TYPE_LIVING = 500
	)

	job_bitflag = BITFLAG_GARRISON

	jobstats = list(
		STATKEY_STR = 2,
		STATKEY_CON = 2,
		STATKEY_END = 2,
		STATKEY_PER = 1,
		STATKEY_INT = 1,
		STATKEY_SPD = 1
	)

	skills = list(
		/datum/skill/combat/swords = 3,
		/datum/skill/combat/shields = 3,
		/datum/skill/combat/wrestling = 4,
		/datum/skill/combat/unarmed = 3,
		/datum/skill/combat/axesmaces = 3,

		/datum/skill/misc/athletics = 3,
		/datum/skill/misc/climbing = 2,
		/datum/skill/misc/swimming = 2,
		/datum/skill/misc/reading = 1
	)

	traits = list(
		TRAIT_HEAVYARMOR,
		TRAIT_MEDIUMARMOR,
		TRAIT_STEELHEARTED,
		TRAIT_KNOWBANDITS,
		TRAIT_RECOGNIZED,
		TRAIT_TUTELAGE
	)

/datum/job/watch_veteran/after_spawn(mob/living/carbon/human/spawned, client/player_client)
	. = ..()
	spawned.verbs |= /mob/proc/haltyell
