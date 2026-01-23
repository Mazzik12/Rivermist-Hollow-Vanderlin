/*
			< ATTENTION >
	If you need to add more map_adjustment, check 'map_adjustment_include.dm'
	These 'map_adjustment.dm' files shouldn't be included in 'dme'
*/

/datum/map_adjustment/voyager
	map_file_name = "voyager.dmm"
	blacklist = list(
		/datum/job/artificer,
		/datum/job/armorsmith,
		/datum/job/carpenter,
		/datum/job/gaffer,
		/datum/job/matron,
		/datum/job/veteran,
		/datum/job/grabber,
		/datum/job/captain,
		/datum/job/hand,
		/datum/job/merchant,
		/datum/job/lieutenant,
		/datum/job/servant,
		/datum/job/bapprentice,
		/datum/job/minor_noble,
		/datum/job/guardsman,
		/datum/job/archivist,
	)
	slot_adjust = list(
		/datum/job/farmer = 1000,
		/datum/job/miner = 1000,
	)
