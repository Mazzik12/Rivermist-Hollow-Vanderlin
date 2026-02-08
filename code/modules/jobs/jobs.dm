GLOBAL_LIST_INIT(lords_positions, list(
	/datum/job/lord::title,
))
GLOBAL_PROTECT(lords_positions)
GLOBAL_PROTECT(noble_positions)

GLOBAL_LIST_INIT(noble_courthand_positions, list(
	/datum/job/lord::title,
	/datum/job/consort::title,
	/datum/job/hand::title,
	/datum/job/prince::title,
	/datum/job/captain::title,
	/datum/job/steward::title,
	/datum/job/magician::title,
	/datum/job/archivist::title,
	/datum/job/courtphys::title,
	/datum/job/minor_noble::title,
	/datum/job/adventurer/courtagent::title,
))
GLOBAL_PROTECT(noble_positions)

GLOBAL_LIST_INIT(garrison_positions, list(
	/datum/job/royalknight::title,
	/datum/job/veteran::title,
	/datum/job/guardsman::title,
	/datum/job/lieutenant::title,
	/datum/job/men_at_arms::title,
	/datum/job/gatemaster::title,
	/datum/job/jailor::title,
	/datum/job/dungeoneer::title,
	/datum/job/town_elder::title,
	/datum/job/forestwarden::title,
	/datum/job/forestguard::title,
	/datum/job/persistence/caravanguard::title,
	))
GLOBAL_PROTECT(garrison_positions)

GLOBAL_LIST_INIT(church_positions, list(
	/datum/job/priest::title,
	/datum/job/monk::title,
	/datum/job/undertaker::title,
	/datum/job/templar::title,
	))
GLOBAL_PROTECT(church_positions)

GLOBAL_LIST_INIT(inquisition_positions, list(
	/datum/job/inquisitor::title,
	/datum/job/orthodoxist::title,
	/datum/job/absolver::title,
	/datum/job/adept::title,
	))
GLOBAL_PROTECT(inquisition_positions)



GLOBAL_LIST_INIT(keep_positions, list(
	/datum/job/captain::title,
))
GLOBAL_PROTECT(keep_positions)



GLOBAL_LIST_INIT(townhall_positions, list(
	/datum/job/burgmeister::title,
	/datum/job/councilor::title,
	/datum/job/servant::title,
))
GLOBAL_PROTECT(townhall_positions)



GLOBAL_LIST_INIT(townwatch_positions, list(
	/datum/job/watch_captain::title,
	/datum/job/watch_sergeant::title,
	/datum/job/watch_veteran::title,
	/datum/job/watch_warden::title,
	/datum/job/watch_guard::title,

))

GLOBAL_PROTECT(townwatch_positions)




GLOBAL_LIST_INIT(chapel_positions, list(
	/datum/job/moon_priest::title,
	/datum/job/heart_priest::title,
	/datum/job/acolyte::title,
))

GLOBAL_PROTECT(chapel_positions)



GLOBAL_LIST_INIT(scholars_positions, list(
	/datum/job/guild_master_wizard::title,
	/datum/job/guild_wizard::title,
	/datum/job/guild_wizard_apprentice::title,
	/datum/job/town_apothecary::title,
	/datum/job/town_apothecary_apprentice::title,
	/datum/job/town_scholar::title,
))
GLOBAL_PROTECT(scholars_positions)



GLOBAL_LIST_INIT(traders_positions, list(
	/datum/job/waterdeep_merchant::title,
	/datum/job/waterdeep_banker::title,
	/datum/job/waterdeep_guild_guard::title,
	/datum/job/waterdeep_guild_assistant::title,
))
GLOBAL_PROTECT(traders_positions)



GLOBAL_LIST_INIT(tavern_positions, list(
	/datum/job/adventurers_guildmaster::title,
	/datum/job/adventurers_assistant::title,
	/datum/job/innkeep::title,
	/datum/job/cook::title,
	/datum/job/matron::title,
	/datum/job/tavern_wench::title,
))
GLOBAL_PROTECT(tavern_positions)



GLOBAL_LIST_INIT(town_positions, list(
	/datum/job/towner::title,
	/datum/job/barber_surgeon::title,
	/datum/job/town_mouth::title,
	/datum/job/town_performer::title,
	/datum/job/artisan::title,
	/datum/job/artisan_apprentice::title,
	/datum/job/miner::title,
	/datum/job/farmhand::title,
	/datum/job/hunter::title,
	/datum/job/fisher::title,
))
GLOBAL_PROTECT(town_positions)



GLOBAL_LIST_INIT(outsiders_positions, list(
	/datum/job/forest_warden::title,
	/datum/job/forest_ranger::title,
	/datum/job/grove_druid::title,
	/datum/job/swamp_witch::title,
))
GLOBAL_PROTECT(outsiders_positions)



GLOBAL_LIST_INIT(adventurers_positions, list(
	/datum/job/adventurer_barbarian::title,
	/datum/job/adventurer_bard::title,
	/datum/job/adventurer_cleric::title,
	/datum/job/adventurer_druid::title,
	/datum/job/adventurer_fighter::title,
	/datum/job/adventurer_monk::title,
	/datum/job/adventurer_paladin::title,
	/datum/job/adventurer_ranger::title,
	/datum/job/adventurer_rogue::title,
	/datum/job/adventurer_sorcerer::title,
	/datum/job/adventurer_warlock::title,
	/datum/job/adventurer_wizard::title,
))
GLOBAL_PROTECT(adventurers_positions)

GLOBAL_LIST_INIT(roguewar_positions, list(
	"Adventurer",
	))

GLOBAL_LIST_INIT(test_positions, list(
	"Tester",
	))

GLOBAL_LIST_EMPTY(job_assignment_order)

/proc/get_job_assignment_order()
	var/list/sorting_order = list()
	sorting_order += GLOB.lords_positions
	sorting_order += GLOB.keep_positions
	sorting_order += GLOB.townhall_positions
	sorting_order += GLOB.townwatch_positions
	sorting_order += GLOB.chapel_positions
	sorting_order += GLOB.scholars_positions
	sorting_order += GLOB.traders_positions
	sorting_order += GLOB.tavern_positions
	sorting_order += GLOB.town_positions
	sorting_order += GLOB.outsiders_positions
	sorting_order += GLOB.adventurers_positions
	return sorting_order

GLOBAL_LIST_INIT(exp_specialmap, list(
	EXP_TYPE_LIVING = list(), // all living mobs
	EXP_TYPE_ANTAG = list(),
	EXP_TYPE_GHOST = list(), // dead people, observers
))
GLOBAL_PROTECT(exp_specialmap)
