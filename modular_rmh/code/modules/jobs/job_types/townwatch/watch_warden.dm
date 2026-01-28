/datum/job/watch_warden
	title = "Watch Warden"
	tutorial = "You are a Warden of the Town Watch. \
	You oversee prisoners, guard the town gates, and ensure that sentences are carried out lawfully. \
	Your duty is vigilance, containment, and control — not mercy, not glory."
	department_flag = TOWNWATCH
	job_flags = (JOB_ANNOUNCE_ARRIVAL | JOB_SHOW_IN_CREDITS | JOB_EQUIP_RANK | JOB_NEW_PLAYER_JOINABLE)
	display_order = JDO_WATCH_WARDEN
	faction = FACTION_TOWN
	total_positions = 1
	spawn_positions = 1
	bypass_lastclass = TRUE

	allowed_ages = list(AGE_ADULT, AGE_MIDDLEAGED, AGE_OLD, AGE_IMMORTAL)
	allowed_races = ALL_RACES_LIST
	selection_color = JCOLOR_TOWNWATCH

	give_bank_account = 50

	exp_type = list(EXP_TYPE_LIVING)
	exp_types_granted = list(EXP_TYPE_GARRISON, EXP_TYPE_COMBAT)
	exp_requirements = list(
		EXP_TYPE_LIVING = 450
	)

	job_bitflag = BITFLAG_GARRISON

	jobstats = list(
		STATKEY_STR = 2,
		STATKEY_CON = 2,
		STATKEY_END = 2,
		STATKEY_PER = 1,
		STATKEY_INT = 0,
		STATKEY_SPD = 1
	)

	skills = list(
		/datum/skill/combat/wrestling = 4,
		/datum/skill/combat/unarmed = 3,
		/datum/skill/combat/whipsflails = 2,
		/datum/skill/combat/swords = 2,

		/datum/skill/misc/athletics = 3,
		/datum/skill/misc/reading = 1,
		/datum/skill/craft/traps = 2
	)

	traits = list(
		TRAIT_MEDIUMARMOR,
		TRAIT_STEELHEARTED
	)

/datum/job/watch_warden/after_spawn(mob/living/carbon/human/spawned, client/player_client)
	. = ..()
	spawned.verbs |= /mob/proc/haltyell
