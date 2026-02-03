/datum/job/blacksmith
	title = "Blacksmith"
	tutorial = "Steel is your craft, whether shaped for war, work, or protection. \
	You trained for many years at the forge, learning to draw iron into blade, tool, \
	and armor alike. From mending ploughshares to fitting guards for battle, \
	your work supports Rivermist Hollow and any who pass through in need of good steel. \
	In Faerûn, few trades are as widely respected as a steady hand at the anvil."
	department_flag = TOWN
	job_flags = (JOB_ANNOUNCE_ARRIVAL | JOB_SHOW_IN_CREDITS | JOB_EQUIP_RANK | JOB_NEW_PLAYER_JOINABLE)
	faction = FACTION_TOWN
	total_positions = 1
	spawn_positions = 1
	bypass_lastclass = TRUE

	allowed_races = RACES_PLAYER_ALL

	outfit = /datum/outfit/blacksmith
	give_bank_account = 30

	job_bitflag = BITFLAG_CONSTRUCTOR

	jobstats = list(
		STATKEY_STR = 1,
		STATKEY_END = 2,
		STATKEY_SPD = -1,
	)

	skills = list(
		/datum/skill/combat/axesmaces = 2,
		/datum/skill/misc/athletics = 3,
		/datum/skill/combat/wrestling = 2,
		/datum/skill/combat/unarmed = 2,
		/datum/skill/craft/crafting = 3,
		/datum/skill/craft/blacksmithing = 4,
		/datum/skill/craft/armorsmithing = 3,
		/datum/skill/craft/weaponsmithing = 3,
		/datum/skill/craft/smelting = 3,
		/datum/skill/craft/engineering = 3,
		/datum/skill/craft/traps = 2,
		/datum/skill/misc/reading = 2,
		/datum/skill/labor/mathematics = 2,
	)

	traits = list(
		TRAIT_MALUMFIRE,
		TRAIT_SEEPRICES,
	)

	exp_type = list(EXP_TYPE_LIVING)
	exp_requirements = list(EXP_TYPE_LIVING = 600)

/datum/outfit/blacksmith
	name = "Blacksmith"
	head = /obj/item/clothing/head/hatfur
	ring = /obj/item/clothing/ring/silver/makers_guild
	backl = /obj/item/weapon/hammer/sledgehammer
	pants = /obj/item/clothing/pants/trou
	shoes = /obj/item/clothing/shoes/boots/leather
	shirt = /obj/item/clothing/shirt/shortshirt
	belt = /obj/item/storage/belt/leather
	beltl = /obj/item/storage/belt/pouch/coins/poor
	beltr = /obj/item/key/blacksmith
	cloak = /obj/item/clothing/cloak/apron/brown

	backpack_contents = list(
		/obj/item/recipe_book/blacksmithing = 1,
	)

/datum/outfit/blacksmith/pre_equip(mob/living/carbon/human/equipped_human, visuals_only)
	. = ..()
	if(prob(50))
		head = /obj/item/clothing/head/hatblu
	if(equipped_human.gender == MALE)
		shoes = /obj/item/clothing/shoes/boots/leather
	else
		armor = /obj/item/clothing/shirt/dress/gen/colored/random
		shoes = /obj/item/clothing/shoes/shortboots
