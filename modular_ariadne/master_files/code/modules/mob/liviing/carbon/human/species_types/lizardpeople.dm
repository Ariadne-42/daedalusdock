/datum/species/lizard
	// Reptilian humanoids with scaled skin and tails.
	name = "\improper Unathi"
	plural_form = "Unathi"

/datum/species/lizard/get_species_lore()
	return list(
		"Highly intelligent reptilian humanoids who reside over a swathe of disunited colonies, divided into clans. \
		Creators of the most advanced prosthetics and A.I technology."
	)

// Override for the default temperature perks, so we can give our specific "cold blooded" perk.
/datum/species/lizard/create_pref_temperature_perks()
	var/list/to_add = list()

	to_add += list(list(
		SPECIES_PERK_TYPE = SPECIES_NEUTRAL_PERK,
		SPECIES_PERK_ICON = "thermometer-empty",
		SPECIES_PERK_NAME = "Cold-blooded",
		SPECIES_PERK_DESC = "Unathi have higher tolerance for hot temperatures, but lower \
			tolerance for cold temperatures. Additionally, they cannot self-regulate their body temperature - \
			they are as cold or as warm as the environment around them is. Stay warm!",
	))

	return to_add
