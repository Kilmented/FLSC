
/datum/lecture/group/hearthcore
	implant_type = /obj/item/implant/core_implant/hearthcore
	success_message = "On the verge of audibility you hear pleasant music, your mind clears up and the spirit grows stronger."
	fail_message = "The Hearthcore feels cold against your back."
	var/high_lecture = TRUE

/datum/lecture/group/hearthcore/pre_check(mob/living/carbon/human/user, obj/item/implant/core_implant/C, targets)
	if(!..())
		return FALSE
	if(high_lecture && !C.get_module(HEARTHCORE_OATHPLEDGE))
		return FALSE
	return TRUE

/datum/lecture/group/hearthcore/step_check(mob/living/carbon/human/H)
	for(var/obj/machinery/power/torchbearer/O in range(7,H))
		if(O.stat || !O.active || get_dist(H, O) > O.area_radius)
			continue
		return TRUE
	return FALSE

/datum/lecture/group/hearthcore/stat//parent ritual
	effect_type = /datum/group_lecture_effect/hearthcore/stat

/datum/lecture/group/hearthcore/stat/step_check(mob/living/carbon/human/H)
	if(GLOB.miracle_points < 1)
		return FALSE
	return TRUE

/datum/group_lecture_effect/hearthcore/stat
	var/stat_buff
	var/buff_value = 3
	var/aditional_value = 2

/datum/group_lecture_effect/hearthcore/stat/trigger_success(var/mob/starter, var/list/participants)
	. = ..()
	GLOB.miracle_points--
	GLOB.grup_ritual_performed++ //I guess here?

/datum/group_lecture_effect/hearthcore/stat/success(var/mob/living/M, var/cnt)
	if(cnt < 3 || !stat_buff)
		return
	M.stats.changeStat(stat_buff, buff_value + cnt * aditional_value)

/* Later

/datum/lecture/group/hearthcore/stat/mechanical
	name = "Origin of Time"
	desc = "Boosts Mechanical stat to 3 + 2 for each participant permanently, if god wills it."
	phrase = "Omnia haec tractavi in corde meo ut curiose intellegerem sunt iusti atque sapientes et opera eorum in manu Dei et tamen nescit homo utrum amore an odio dignus sit."
	phrases = list(
		"Omnia haec tractavi in corde meo ut curiose intellegerem sunt iusti atque sapientes et opera eorum in manu Dei et tamen nescit homo utrum amore an odio dignus sit.",
		"Sed omnia in futuro servantur incerta eo quod universa aeque eveniant iusto et impio bono et malo mundo et inmundo immolanti victimas et sacrificia contemnenti sicut bonus sic et peccator ut periurus ita et ille qui verum deierat.",
		"Hoc est pessimum inter omnia quae sub sole fiunt quia eadem cunctis eveniunt unde et corda filiorum hominum implentur malitia et contemptu in vita sua et post haec ad inferos deducentur.",
		"Nemo est qui semper vivat et qui huius rei habeat fiduciam melior est canis vivens leone mortuo.",
		"Viventes enim sciunt se esse morituros mortui vero nihil noverunt amplius nec habent ultra mercedem quia oblivioni tradita est memoria eorum.",
		"Amor quoque et odium et invidia simul perierunt nec habent partem in hoc saeculo et in opere quod sub sole geritur.",
		"Vade ergo et comede in laetitia panem tuum et bibe com gaudio vinum tuum quia Deo placent opera tua.",
		"Omni tempore sint vestimenta tua candida et oleum de capite tuo non deficiat.",
		"Perfruere vita com uxore quam diligis cunctis diebus vitae instabilitatis tuae qui dati sunt tibi sub sole omni tempore vanitatis tuae haec est enim pars in vita et in labore tuo quod laboras sub sole.",
		"Amen."
	)
	effect_type = /datum/group_lecture_effect/hearthcore/stat/mechanical

/datum/group_lecture_effect/hearthcore/stat/mechanical
	stat_buff = STAT_MEC

/datum/lecture/group/hearthcore/stat/cognition
	name = "Discovery of the Path"
	desc = "Boosts Cognition stat to 3 + 2 for each participant permanently, if god wills it."
	phrase = "Dedit quoque Deus sapientiam Salomoni et prudentiam multam nimis et latitudinem cordis quasi harenam quae est in litore maris."
	phrases = list(
		"Dedit quoque Deus sapientiam Salomoni et prudentiam multam nimis et latitudinem cordis quasi harenam quae est in litore maris.",
		"Et praecedebat sapientia Salomonis sapientiam omnium Orientalium et Aegyptiorum.",
		"Et erat sapientior cunctis hominibus sapientior Aethan Ezraita et Heman et Chalcal et Dorda filiis Maol et erat nominatus in universis gentibus per circuitum.",
		"Locutus est quoque Salomon tria milia parabolas et fuerunt carmina eius quinque et mille.",
		"Et disputavit super lignis a cedro quae est in Libano usque ad hysopum quae egreditur de pariete et disseruit de iumentis et volucribus et reptilibus et piscibus.",
		"Et veniebant de cunctis populis ad audiendam sapientiam Salomonis et ab universis regibus terrae qui audiebant sapientiam eius.",
		"Amen."
	)
	effect_type = /datum/group_lecture_effect/hearthcore/stat/cognition

/datum/group_lecture_effect/hearthcore/stat/cognition
	stat_buff = STAT_COG

/datum/lecture/group/hearthcore/stat/biology
	name = "Creation of Vitae"
	desc = "Boosts Biology stat to 3 + 2 for each participant permanently, if god wills it."
	phrase = "Convocatis autem duodecim apostolis dedit illis virtutem et potestatem super omnia daemonia et ut languores curarent."
	phrases = list(
		"Convocatis autem duodecim apostolis dedit illis virtutem et potestatem super omnia daemonia et ut languores curarent.",
		"Et misit illos praedicare regnum Dei et sanare infirmos.",
		"Et ait ad illos nihil tuleritis in via neque virgam neque peram neque panem neque pecuniam neque duas tunicas habeatis.",
		"Et in quamcumque domum intraveritis ibi manete et inde ne exeatis.",
		"Et quicumque non receperint vos exeuntes de civitate illa etiam pulverem pedum vestrorum excutite in testimonium supra illos.",
		"Egressi autem circumibant per castella evangelizantes et curantes ubique.",
		"Amen."
	)
	effect_type = /datum/group_lecture_effect/hearthcore/stat/biology

/datum/group_lecture_effect/hearthcore/stat/biology
	stat_buff = STAT_BIO

/datum/lecture/group/hearthcore/robustness
	name = "Pilgrim's Path"
	desc = "Boosts Robustness stat to 3 + 2 for each participant permanently, if god wills it."
	phrase = "Audi Israhel tu transgredieris hodie Iordanem ut possideas nationes maximas et fortiores te civitates ingentes et ad caelum usque muratas."
	phrases = list(
		"Audi Israhel tu transgredieris hodie Iordanem ut possideas nationes maximas et fortiores te civitates ingentes et ad caelum usque muratas.",
		"Populum magnum atque sublimem filios Enacim quos ipse vidisti et audisti quibus nullus potest ex adverso resistere.",
		"Scies ergo hodie quod Dominus Deus tuus ipse transibit ante te ignis devorans atque consumens qui conterat eos et deleat atque disperdat ante faciem tuam velociter sicut locutus est tibi.",
		"Ne dicas in corde tuo com deleverit eos Dominus Deus tuus in conspectu tuo propter iustitiam meam introduxit me Dominus ut terram hanc possiderem com propter impietates suas istae deletae sint nationes.",
		"Neque enim propter iustitias tuas et aequitatem cordis tui ingredieris ut possideas terras eorum sed quia illae egerunt impie te introeunte deletae sunt et ut conpleret verbum suum Dominus quod sub iuramento pollicitus est patribus tuis Abraham Isaac et Iacob.",
		"Scito igitur quod non propter iustitias tuas Dominus Deus tuus dederit tibi terram hanc optimam in possessionem com durissimae cervicis sis populus.",
		"Amen."
	)
	effect_type = /datum/group_lecture_effect/hearthcore/stat/robustness

/datum/group_lecture_effect/hearthcore/stat/robustness
	stat_buff = STAT_ROB

/datum/lecture/group/hearthcore/toughness
	name = "Reclamation of Endurance"
	desc = "Boosts Toughness stat to 3 + 2 for each participant permanently, if god wills it."
	phrase = "In finem psalmus David."
	phrases = list(
		"In finem psalmus David.",
		"Caeli enarrant gloriam Dei et opera manuum eius adnuntiat firmamentum.",
		"Dies diei eructat verbum et nox nocti indicat scientiam.",
		"Non sunt loquellae neque sermones quorum non audiantur voces eorum.",
		"In omnem terram exivit sonus eorum et in fines orbis terrae verba eorum.",
		"In sole posuit tabernaculum suum et ipse tamquam sponsus procedens de thalamo suo exultavit ut gigans ad currendam viam.",
		"A summo caeli egressio eius et occursus eius usque ad summum eius nec est qui se abscondat a calore eius.",
		"Amen."
	)
	effect_type = /datum/group_lecture_effect/hearthcore/stat/toughness

/datum/group_lecture_effect/hearthcore/stat/toughness
	stat_buff = STAT_TGH

/datum/lecture/group/hearthcore/crusade
	name = "Call of the Crusade"
	desc = "A litany that may reveal the prayers of crusaders, if enough people participate."
	phrase = "Locutus est Dominus ad Mosen dicens."
	phrases = list(
		"Locutus est Dominus ad Mosen dicens.",
		"Fac tibi duas tubas argenteas ductiles quibus convocare possis multitudinem quando movenda sunt castra.",
		"Cumque increpueris tubis congregabitur ad te omnis turba ad ostium foederis tabernaculi.",
		"Si semel clangueris venient ad te principes et capita multitudinis Israhel.",
		"Sin autem prolixior atque concisus clangor increpuerit movebunt castra primi qui sunt ad orientalem plagam.",
		"In secundo autem sonitu et pari ululatu tubae levabunt tentoria qui habitant ad meridiem et iuxta hunc modum reliqui facient ululantibus tubis in profectione.",
		"Quando autem congregandus est populus simplex tubarum clangor erit et non concise ululabunt.",
		"Filii Aaron sacerdotes clangent tubis eritque hoc legitimum sempiternum in generationibus vestris.",
		"Si exieritis ad bellum de terra vestra contra hostes qui dimicant adversum vos clangetis ululantibus tubis et erit recordatio vestri coram Domino Deo vestro ut eruamini de manibus inimicorum vestrorum."
	)
	effect_type = /datum/group_lecture_effect/hearthcore/crusade

/datum/group_lecture_effect/hearthcore/crusade/success(var/mob/living/M, var/cnt)
	if(cnt < 6)
		return
	var/obj/item/implant/core_implant/CI = M.get_core_implant(/obj/item/implant/core_implant/hearthcore)
	if(CI)
		var/datum/lecture/hearthcore/crusader/C = /datum/lecture/hearthcore/crusader/brotherhood
		CI.known_lectures |= initial(C.name)
		C = /datum/lecture/hearthcore/crusader/battle_call
		CI.known_lectures |= initial(C.name)
		C = /datum/lecture/hearthcore/crusader/flash
		CI.known_lectures |= initial(C.name)

/datum/lecture/group/hearthcore/sanctify
	name = "Sanctify"
	desc = "Sanctify the land you tread."
	phrase = "Benedicite loco isto."
	phrases = list(
		"Benedicite loco isto.",
		"Benedic hoc petimus Patris.",
		"Nos obsecro te removere percula huius loci.",
		"Ne malorum tangere terram.",
		"Frase quinta.",
		"Frase sexta.",
		"Frase septima."
	)
	effect_type = /datum/group_lecture_effect/hearthcore/sanctify
	high_lecture = FALSE

/datum/lecture/group/hearthcore/sanctify/step_check(mob/living/carbon/human/H)
	return TRUE

/datum/group_lecture_effect/hearthcore/sanctify/trigger_success(var/mob/starter, var/list/participants)
	..()
	var/area/A = get_area(starter)
	A?.sanctify()

/area/proc/sanctify()
	LEGACY_SEND_SIGNAL(src, COMSIG_AREA_SANCTIFY)
	return
*/
