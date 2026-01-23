/datum/job/burgmeister
	title = "Burgmeister"
	tutorial = "Entrusted with the governance of Rivermist Hollow by the Duskmar Duchy, you are the steady hand that keeps the town running \
	while lords and ladies concern themselves with distant politics. You serve as mayor, judge, and administrator alike—overseeing taxes, \
	trade, guild affairs, and the enforcement of law. Chosen not by blood, but by the will and respect of the townsfolk, your authority rests \
	on competence, reputation, and trust. You are the bridge between the ducal council and everyday life, and Rivermist stands or falls by \
	your judgment."
	department_flag = NOBLEMEN
	job_flags = (JOB_ANNOUNCE_ARRIVAL | JOB_SHOW_IN_CREDITS | JOB_EQUIP_RANK)
	display_order = JDO_NOBLE
	faction = FACTION_TOWN
	total_positions = 1
	spawn_positions = 1

	outfit = /datum/outfit/lord //NEED TO BE CHANGED
	bypass_lastclass = TRUE
	give_bank_account = 500
	selection_color = "#6E7F80"

	job_bitflag = BITFLAG_NOBILITY
	exp_type = list(EXP_TYPE_NOBLE, EXP_TYPE_LIVING, EXP_TYPE_LEADERSHIP)
	exp_types_granted = list(EXP_TYPE_NOBLE, EXP_TYPE_LEADERSHIP)

	exp_requirements = list(
		EXP_TYPE_LIVING = 600,
		EXP_TYPE_NOBLE = 400,
		EXP_TYPE_LEADERSHIP = 250
	)

	jobstats = list(
		STATKEY_STR = 0,
		STATKEY_INT = 4,
		STATKEY_CON = 2,
		STATKEY_END = 3,
		STATKEY_SPD = 0,
		STATKEY_PER = 3,
		STATKEY_LCK = 4
	)

	skills = list(
		// Light self-defense
		/datum/skill/combat/knives = 2,
		/datum/skill/combat/swords = 2,
		/datum/skill/combat/unarmed = 1,
		/datum/skill/combat/shields = 1,

		// Administration & governance
		/datum/skill/labor/mathematics = 4,
		/datum/skill/misc/reading = 4,
		/datum/skill/misc/medicine = 2,
		/datum/skill/misc/riding = 2,

		// Physical & survival baseline
		/datum/skill/misc/athletics = 2,
		/datum/skill/misc/climbing = 1,
		/datum/skill/misc/swimming = 1
	)

	traits = list(
		TRAIT_NOBLE,
		TRAIT_NOSEGRAB
	)
