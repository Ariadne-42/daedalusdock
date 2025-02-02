/**Disfiguration
 * Increases stealth
 * No change to resistance
 * Increases stage speed
 * Slightly increases transmissibility
 * Critical level
 * Bonus: Adds disfiguration trait making the mob appear as "Unknown" to others.
 */
/datum/symptom/disfiguration
	name = "Disfiguration"
	desc = "The virus liquefies facial muscles, disfiguring the host."
	stealth = 2
	resistance = 0
	stage_speed = 3
	transmittable = 1
	level = 5
	severity = 1
	symptom_delay_min = 25
	symptom_delay_max = 75

/datum/symptom/disfiguration/on_process(datum/pathogen/advance/A)
	. = ..()
	if(!.)
		return
	var/mob/living/M = A.affected_mob
	if (HAS_TRAIT(M, TRAIT_DISFIGURED))
		return
	switch(A.stage)
		if(5)
			ADD_TRAIT(M, TRAIT_DISFIGURED, PATHOGEN_TRAIT)
			M.visible_message(span_warning("[M]'s face appears to cave in!"), span_notice("You feel your face crumple and cave in!"))
		else
			M.visible_message(span_warning("[M]'s face begins to contort..."), span_notice("Your face feels wet and malleable..."))


/datum/symptom/disfiguration/on_stop_processing(datum/pathogen/advance/A)
	. = ..()
	if(!.)
		return
	if(A.affected_mob)
		REMOVE_TRAIT(A.affected_mob, TRAIT_DISFIGURED, PATHOGEN_TRAIT)
