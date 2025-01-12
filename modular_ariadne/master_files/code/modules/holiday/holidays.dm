
// The actual holidays

// MAY

//Draconic Day was celebrated on May 3rd, the date on which the Draconic language was merged (#26780)
//Overridden with sinta'unathi (unathi language) day
/datum/holiday/draconic_day
	name = "Sinta'unathi Day"
	begin_month = MAY
	begin_day = 3

/datum/holiday/draconic_day/greet()
	return "On this day, Unathi from various clans commemorate the continued prominence of their language with literature and other cultural works."

/datum/holiday/draconic_day/getStationPrefix()
	return pick("Sinta", "Lizard", "Unathi")

//Tiziran Unification Day was celebrated on Sept 1st, the day on which lizards were made a roundstart race
//Overridden with Unathi Colonial Days
/datum/holiday/tiziran_unification
	name = "Unathi Colonial Days"
	begin_month = SEPTEMBER
	begin_day = 1
	end_day = 10

/datum/holiday/tiziran_unification/greet()
	return "For ten days, Unathi from various clans celebrate the history of their various worlds. This holiday is known to mark the starts and ends of territorial conflicts of a variety of magnitudes across Unathi space."

/datum/holiday/tiziran_unification/getStationPrefix()
	return pick("Lizard", "Unathi", "Colonial")
