/obj/machinery/optable/altar
	name = "Board of Opposites"
	desc = "A flat, clean surface used for certain Custodian Lectures, and Hearthcore maintenance and upgrade."
	icon = 'icons/obj/custodian_structures.dmi'
	icon_state = "optable-idle"
	y_offset = 10

	var/list/acceptable_items = list(
	/obj/item/implant/core_implant/hearthcore,
	/obj/item/hearthcore_upgrade,
	/obj/item/hearthcore_upgrade/natures_blessing,
	/obj/item/hearthcore_upgrade/blazing_aegis,
	/obj/item/hearthcore_upgrade/cleansing_flames,
	/obj/item/hearthcore_upgrade/martyr_gift,
	/obj/item/hearthcore_upgrade/burning_fury,
	/obj/item/hearthcore_upgrade/embers_of_swiftness
	)
	var/list/available_slots = list()

/obj/machinery/optable/altar/New()
	//bottom left
	available_slots += list(list("offset" = list("x" = -8 , "y" = -3), "item" = null))
	//bottom right
	available_slots += list(list("offset" = list("x" = 8 , "y" = -3), "item" = null))
	..()

/obj/machinery/optable/altar/attackby(obj/item/I, mob/user)
	if(!istype(I) || !(I.type in acceptable_items))
		return

	item_cleanup()
	var/list/slot = null
	for(var/j = 1, j <= available_slots.len, j++)
		slot = available_slots[j]
		if (slot["item"] == null)
			break
		slot = null

	if(!slot)
		to_chat(user, "<span class='notice'>There is no free space on \the [src] to place \the [I]!</span>")
		return

	if (user.unEquip(I, src.loc))
		I.pixel_x = slot["offset"]["x"]
		I.pixel_y = slot["offset"]["y"]
		slot["item"] = I

/obj/machinery/optable/altar/proc/item_cleanup()
	var/turf/T = get_turf(src)

	for(var/j = 1, j <= available_slots.len, j++)
		if(!(available_slots[j]["item"] in T.contents))
			available_slots[j]["item"] = null

