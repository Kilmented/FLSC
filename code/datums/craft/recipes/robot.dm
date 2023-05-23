/datum/craft_recipe/robotic
	category = "Robots"
	time = 100
	related_stats = list(STAT_MEC)
	requiredPerk = PERK_ROBOTICS_EXPERT

// Control Module used in all the custom bots.
/datum/craft_recipe/robotic/custom_board
	name = "Custom Control Board"
	result = /obj/item/bot_part/control
	icon_state = "electronic"
	steps = list(
		list(/obj/item/circuitboard, 1, "time" = 20),
		list(CRAFT_MATERIAL, 3, MATERIAL_PLASTIC, "time" = 60),
		list(CRAFT_MATERIAL, 2, MATERIAL_SILVER, "time" = 60),
		list(CRAFT_MATERIAL, 1, MATERIAL_GOLD, "time" = 60),
		list(QUALITY_WELDING, 10, "time" = 60)
	)

// Roomba Section
/datum/craft_recipe/robotic/roomba_frame
	name = "Roomba Frame"
	result = /obj/item/bot_part/roomba/roomba_frame
	steps = list(
		list(CRAFT_MATERIAL, 5, MATERIAL_STEEL, "time" = 60),
		list(QUALITY_WELDING, 10, "time" = 60),
		list(QUALITY_BOLT_TURNING, 10, "time" = 180),
		list(QUALITY_SCREW_DRIVING, 10, "time" = 90)
	)

/datum/craft_recipe/robotic/roomba_treads
	name = "Roomba Treads"
	result = /obj/item/bot_part/roomba/roomba_treads
	steps = list(
		list(CRAFT_MATERIAL, 2, MATERIAL_PLASTIC, "time" = 60),
		list(QUALITY_WELDING, 10, "time" = 60)
	)

/datum/craft_recipe/robotic/roomba_knife
	name = "Roomba Knife"
	result = /obj/item/bot_part/roomba/roomba_knife
	steps = list(
		list(/obj/item/tool/knife, 1, "time" = 30),
		list(QUALITY_ADHESIVE, 10, "time" = 30)
	)

/datum/craft_recipe/robotic/roomba_armor
	name = "Roomba Plating"
	result = /obj/item/bot_part/roomba/roomba_plating
	steps = list(
		list(CRAFT_MATERIAL, 5, MATERIAL_STEEL, "time" = 60),
		list(QUALITY_WELDING, 10, "time" = 60)
	)

/datum/craft_recipe/robotic/roomba_armor/heavy
	name = "Heavy Roomba Plating"
	result = /obj/item/bot_part/roomba/roomba_plating/heavy
	steps = list(
		list(/obj/item/bot_part/roomba/roomba_plating, 1, "time" = 60),
		list(CRAFT_MATERIAL, 4, MATERIAL_PLASTEEL, "time" = 60),
		list(QUALITY_WELDING, 10, "time" = 60)
	)

// PI Sword Drone
/datum/craft_recipe/robotic/sword_frame
	name = "Sword Drone Frame"
	result = /obj/item/bot_part/sword_part/main_frame
	steps = list(
		list(CRAFT_MATERIAL, 5, MATERIAL_STEEL, "time" = 60),
		list(CRAFT_MATERIAL, 2, MATERIAL_PLASTEEL, "time" = 60),
		list(QUALITY_WELDING, 10, "time" = 60),
		list(QUALITY_BOLT_TURNING, 10, "time" = 180),
		list(QUALITY_SCREW_DRIVING, 10, "time" = 90)
	)

// PI Mantis Drone
/datum/craft_recipe/robotic/mantis_frame
	name = "Mantis Drone Frame"
	result = /obj/item/bot_part/mantis_part/main_frame
	steps = list(
		list(CRAFT_MATERIAL, 5, MATERIAL_STEEL, "time" = 60),
		list(CRAFT_MATERIAL, 5, MATERIAL_PLASTEEL, "time" = 60),
		list(QUALITY_WELDING, 10, "time" = 60),
		list(QUALITY_BOLT_TURNING, 10, "time" = 180),
		list(QUALITY_SCREW_DRIVING, 10, "time" = 90)
	)

// PI Drone Limbs
/datum/craft_recipe/robotic/head_frame
	name = "Head Frame"
	result = /obj/item/bot_part/head_frame
	steps = list(
		list(CRAFT_MATERIAL, 5, MATERIAL_STEEL, "time" = 60),
		list(CRAFT_MATERIAL, 2, MATERIAL_PLASTEEL, "time" = 60),
		list(/obj/item/robot_parts/robot_component/camera, 1, "time" = 60),
		list(QUALITY_WELDING, 10, "time" = 60),
		list(QUALITY_BOLT_TURNING, 10, "time" = 180),
		list(QUALITY_SCREW_DRIVING, 10, "time" = 90)
	)

/datum/craft_recipe/robotic/left_arm_frame
	name = "Left Arm Frame"
	result = /obj/item/bot_part/left_arm_frame
	steps = list(
		list(CRAFT_MATERIAL, 5, MATERIAL_STEEL, "time" = 60),
		list(CRAFT_MATERIAL, 1, MATERIAL_PLASTEEL, "time" = 60),
		list(/obj/item/robot_parts/robot_component/actuator, 1, "time" = 60),
		list(QUALITY_WELDING, 10, "time" = 60),
		list(QUALITY_BOLT_TURNING, 10, "time" = 180),
		list(QUALITY_SCREW_DRIVING, 10, "time" = 90)
	)

/datum/craft_recipe/robotic/right_arm_frame
	name = "Right Arm Frame"
	result = /obj/item/bot_part/right_arm_frame
	steps = list(
		list(CRAFT_MATERIAL, 5, MATERIAL_STEEL, "time" = 60),
		list(CRAFT_MATERIAL, 1, MATERIAL_PLASTEEL, "time" = 60),
		list(/obj/item/robot_parts/robot_component/actuator, 1, "time" = 60),
		list(QUALITY_WELDING, 10, "time" = 60),
		list(QUALITY_BOLT_TURNING, 10, "time" = 180),
		list(QUALITY_SCREW_DRIVING, 10, "time" = 90)
	)

/datum/craft_recipe/robotic/left_leg_frame
	name = "Left Leg Frame"
	result = /obj/item/bot_part/left_leg_frame
	steps = list(
		list(CRAFT_MATERIAL, 5, MATERIAL_STEEL, "time" = 60),
		list(CRAFT_MATERIAL, 1, MATERIAL_PLASTEEL, "time" = 60),
		list(/obj/item/robot_parts/robot_component/actuator, 1, "time" = 60),
		list(QUALITY_WELDING, 10, "time" = 60),
		list(QUALITY_BOLT_TURNING, 10, "time" = 180),
		list(QUALITY_SCREW_DRIVING, 10, "time" = 90)
	)

/datum/craft_recipe/robotic/right_leg_frame
	name = "Right Leg Frame"
	result = /obj/item/bot_part/right_leg_frame
	steps = list(
		list(CRAFT_MATERIAL, 5, MATERIAL_STEEL, "time" = 60),
		list(CRAFT_MATERIAL, 1, MATERIAL_PLASTEEL, "time" = 60),
		list(/obj/item/robot_parts/robot_component/actuator, 1, "time" = 60),
		list(QUALITY_WELDING, 10, "time" = 60),
		list(QUALITY_BOLT_TURNING, 10, "time" = 180),
		list(QUALITY_SCREW_DRIVING, 10, "time" = 90)
	)

/datum/craft_recipe/robotic/mining_bot
	name = "Aether Mining Bot"
	result = /mob/living/carbon/superior_animal/robot/mining/aether
	steps = list(
		list(CRAFT_MATERIAL, 10, MATERIAL_STEEL, "time" = 60),
		list(/obj/item/bot_part/roomba/roomba_treads, 2, "time" = 60),
		list(/obj/item/robot_parts/robot_component/actuator, 2, "time" = 60),
		list(/obj/item/robot_parts/robot_component/camera, 1, "time" = 60),
		list(/obj/item/tool/pickaxe/diamonddrill, 1, "time" = 60),
		list(QUALITY_WELDING, 10, "time" = 60),
		list(QUALITY_BOLT_TURNING, 10, "time" = 180),
		list(QUALITY_SCREW_DRIVING, 10, "time" = 90)
	)

/datum/craft_recipe/robotic/chicken
	name = "Chemical Housing Internal Combustion Kit"
	result = /mob/living/simple_animal/metal_chicken
	steps = list(
		list(CRAFT_MATERIAL, 10, MATERIAL_STEEL, "time" = 30),
		list(CRAFT_MATERIAL, 10, MATERIAL_PLASTIC, "time" = 30),
		list(CRAFT_MATERIAL, 10, MATERIAL_PLASTEEL, "time" = 30),
		list(CRAFT_MATERIAL, 10, MATERIAL_GLASS, "time" = 30),
		list(/obj/item/bot_part/roomba/roomba_treads, 2, "time" = 60),
		list(/obj/item/robot_parts/robot_component/actuator, 2, "time" = 60),
		list(/obj/item/robot_parts/robot_component/camera, 1, "time" = 60),
		list(/obj/structure/reagent_dispensers/bidon, 1, "time" = 30),
		list(/obj/item/circuitboard/chicken, 1,"time" = 30),
		list(QUALITY_WELDING, 10, "time" = 60),
		list(QUALITY_BOLT_TURNING, 10, "time" = 180),
		list(QUALITY_SCREW_DRIVING, 10, "time" = 90)
	)

//copypasted from PIRS craft code to here, Union can have it too
/datum/craft_recipe/robotic/safety_clamp
	name = "Hydraulic clamp overclock: KILL CLAMP"
	result = /obj/item/mecha_parts/mecha_equipment/tool/safety_clamp
	steps = list(
		list(/obj/item/mecha_parts/mecha_equipment/tool/hydraulic_clamp, 1, "time" = 60),
		list(QUALITY_BOLT_TURNING, 30, "time" = 40),
		list(/obj/item/tool_upgrade/productivity/motor, 1, "time" = 60),
		list(QUALITY_SCREW_DRIVING, 10, 70),
		list(/obj/item/tool_upgrade/augment/hydraulic, 1, "time" = 60),
		list(QUALITY_SCREW_DRIVING, 10, 70),
		list(CRAFT_MATERIAL, 6, MATERIAL_PLASTEEL),
		list(QUALITY_WELDING, 30, "time" = 40),
		list(/obj/item/tool_upgrade/augment/spikes, 1, "time" = 60)
	)

/datum/craft_recipe/robotic/robotmelee //Lots of steps
	name = "robot mark v armor plating"
	result = /obj/item/robot_parts/robot_component/armour/mkv
	steps = list(
		list(CRAFT_MATERIAL, 10, MATERIAL_PLASTEEL, "time" = 90),
		list(CRAFT_MATERIAL, 10, MATERIAL_STEEL, "time" = 30),
		list(QUALITY_WELDING, 35, "time" = 90),
		list(QUALITY_CUTTING, 30, "time" = 180),
		list(QUALITY_HAMMERING, 30, "time" = 180),
		list(QUALITY_SCREW_DRIVING, 35, "time" = 90),
		list(QUALITY_BOLT_TURNING, 30, "time" = 120),
		list(QUALITY_SAWING, 30, "time" = 60)
	)
