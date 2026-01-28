/*
			< ATTENTION >
	If you need to add more map_adjustment, check 'map_adjustment_include.dm'
	These 'map_adjustment.dm' files shouldn't be included in 'dme'
*/

#define POINTY_EARS list(\
	SPEC_ID_ELF,\
	SPEC_ID_HALF_ELF\
)

/datum/map_adjustment/rosewood
	map_file_name = "rosewood.dmm"
	species_adjust = list(
		/datum/job/lord = POINTY_EARS,
		/datum/job/captain = POINTY_EARS
	)

#undef POINTY_EARS

	blacklist = list(
		// RACES_PLAYER_GRENZ
		/datum/job/advclass/combat/swordmaster,
	)

	migrant_blacklist = list(
		/datum/migrant_wave/crusade,
		/datum/migrant_wave/grenzelhoft_visit,
	)
