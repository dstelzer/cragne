"Cragne Manor" by "Daniel Stelzer and Jemma Briggeman"

Chapter - Do Not Change Any Of This

Include Cragne Suite by Ryan Veeder.

[Don't mess with other people's rooms!]

SPO is a region.

SPO7 is a room in SPO. SPO7 is east from SPO1 and west from DAN1.

Part - The thing we need from another room

The Stelzer flashlight is a privately-named transparent closed openable container.

Part - Setting Up the World, Just for Testing

The player is in SPO1. The Stelzer flashlight is in SPO1. The description of SPO1 is "Go east to enter the actual room under consideration. Your goal is to cross the bridge.". The description of DAN1 is "Good job! You made it!". After looking when the location is DAN1: end the story finally saying "You have won".

When play begins:
	[try switching the story transcript on;]
	say "[bracket]Thank you for testing! Please use >SCRIPT ON to start a transcript if we're not here to see the testing in person. You can add a comment to the transcript by starting a command line with a punctuation mark. When you're done, please send your transcript file to dsdraco7@gmail.com and we'll get to work fixing it! - Daniel and Jemma[close bracket][paragraph break]".

After reading a command:
	if the player's command matches the regular expression "^\p":
		say "[bracket]Noted.[close bracket][paragraph break]";
		reject the player's command.

Part - SPO7 Bridge

Chapter 1 - General Implementation

Section A - Boilerplate

The printed name of SPO7 is "[Stelzer room name] (Daniel Stelzer and Jemma Briggeman)". The description of SPO7 is "[Stelzer room description]".

The commentary of SPO7 is "This room was a collaboration: Daniel Stelzer, the programmer, handled the implementation, while Jemma Briggeman, the English major, handled the writing. The idea of climbing down the rope and entering the skeleton to extract the bones was Daniel's (as he apparently has a thing for rope puzzles in IF), while the plants, animals, sculpture, and details of the environment were Jemma's. All bugs are Daniel's fault, all typos are Jemma's. (Thanks also to our boyfriend Azri Aziz for testing, along with Andrew Schultz, Jenni Polodna, and Chris Conley!)".

Instead of examining the player when the location is SPO7:
	say "You're having a hell of a day, but you're determined to keep moving forward. Despite the burning in your limbs and the fact that you could really do with a drink right now, you're still (miraculously) in one piece[if Stelzer-wet is true]. Your hair falls in damp straggles around your ears, occasionally dripping water into your eyes. Your clothes are weighted down with water and every breeze steals a little bit more heat from your freezing skin[end if]."
Stelzer-wet is initially false.

Section B - Descriptions

To say Stelzer adjective: say "[one of]hideous[or]faint[or]nameless[or]singular[or]maddening[or]abnormal[or]blasphemous[or]accursed[or]loathsome[or]eldritch[or]indescribable[or]aberrant[or]abominable[or]absurd[or]abysmal[or]alien[or]ambiguous[or]amorphous[or]anarchic[or]ancient[or]anomalous[or]appalling[or]atrocious[or]cancerous[or]cellular[or]changeable[or]confusing[or]congealed[or]corrupted[or]decomposing[or]deformed[or]degenerated[or]degraded[or]delirious[or]detestable[or]diabolical[or]diseased[or]disgusting[or]distorted[or]dreadful[or]effervescent[or]festering[or]fetid[or]fiendish[or]piscatorial[or]fluctuating[or]fluid[or]foaming[or]gangrenous[or]ghastly[or]glutinous[or]greenish[or]grim[or]grisly[or]hateful[or]hellish[or]ichorous[or]infernal[or]infested[or]inhuman[or]insipid[or]irregular[or]malevolent[or]malicious[or]malignant[or]membranous[or]menacing[or]mesmerizing[or]monstrous[or]morbid[or]mottled[or]moldering[or]nauseating[or]nebulous[or]necromantic[or]noxious[or]obscene[or]odious[or]odorous[or]oily[or]ominous[or]oozing[or]organic[or]pale[or]pallid[or]peculiar[or]perfidious[or]perverse[or]phlegmatic[or]poisonous[or]profane[or]protoplasmic[or]pseudopodal[or]pulsating[or]chthonic[or]quiescent[or]repellent[or]reprehensible[or]reptilian[or]repugnant[or]repulsive[or]resplendent[or]sacrilegious[or]sallow[or]sanguine[or]sordid[or]tenebrous[or]turbid[or]unclean[or]uncouth[or]unspeakable[or]unutterable[or]vague[or]vaporous[or]vile[or]viscous[or]warped[or]wet[or]damp[or]wretched[or]zymotic[or]infectious[or]putrescent[or]daemoniac[or]fetid[or]fungoid[or]lurking[or]non-Euclidean[or]squamous[or]ululating[at random]".
To say articulated Stelzer adjective:
	let T be the substituted form of "[Stelzer adjective]";
	if T matches the regular expression "^<aeiou>": [Starts with a vowel]
		say "an [T]";
	else:
		say "a [T]".

Understand "hideous/faint/nameless/singular/maddening/abnormal/blasphemous/accursed/loathsome/eldritch/indescribable/aberrant/abominable/absurd/abysmal/alien/ambiguous/amorphous/anarchic/ancient/anomalous/appalling/atrocious/cancerous/cellular/changeable/confusing/congealed/corrupted/decomposing/deformed/degenerated/degraded/delirious/detestable/diabolical/diseased/disgusting/distorted/dreadful/effervescent/festering/fetid/fiendish/piscatorial/fluctuating/fluid/foaming/gangrenous/ghastly/glutinous/greenish/grim/grisly/hateful/hellish/ichorous/infernal/infested/inhuman/insipid/irregular/malevolent/malicious/malignant/membranous/menacing/mesmerizing/monstrous/morbid/mottled/moldering/nauseating/nebulous/necromantic/noxious/obscene/odious/odorous/oily/ominous/oozing/organic/pale/pallid/peculiar/perfidious/perverse/phlegmatic/poisonous/profane/protoplasmic/pseudopodal/pulsating/chthonic/quiescent/repellent/reprehensible/reptilian/repugnant/repulsive/resplendent/sacrilegious/sallow/sanguine/sordid/tenebrous/turbid/unclean/uncouth/unspeakable/unutterable/vague/vaporous/vile/viscous/warped/wet/damp/wretched/zymotic/infectious/putrescent/daemoniac/fetid/fungoid/lurking/non-euclidean/squamous/ululating" as "[Stelzer adjective match]".
After reading a command when the location is SPO7:
	if the player's command includes "[Stelzer adjective match]":
		say "[bracket]The word '[matched text]' is a randomly-generated Lovecraftian adjective that could apply to all sorts of things here. Try using another word instead.[close bracket][paragraph break]";
		cut the matched text;
		say "TEST: [player's command]."

The Stelzer position is a number that varies. [0 = on the bridge, 1 = under the bridge, 2 = in the water, 3 = in the skeleton] [Would use a KoV for this but those might conflict elsewhere]
A thing can be Stelzer-vanishing. A thing is usually not Stelzer-vanishing.

Definition: a thing is unhandled if it is not handled. [Why doesn't the library provide this…? Bug?]

To adjust the Stelzer position to (N - a number): [Set up scenery here]
	repeat with the item running through unhandled Stelzer-vanishing things: [First remove everything]
		remove the item from play;
	if N is 0: [Then restore the things we want]
		now the Stelzer gap is in SPO7;
		now the Stelzer bridge is in SPO7;
		now the Stelzer protrusion is in SPO7;
	else if N is 1:
		now the Stelzer weed is in SPO7;
		now the Stelzer bridge is in SPO7;
		now the Stelzer bat is in SPO7;
		now the Stelzer bat is perching;
		now the Stelzer skeleton is nowhere; [Have to handle this one specially because the player can end up inside it]
	else if N is 2:
		now the Stelzer skeleton is in SPO7;
		now Stelzer-wet is true;
	else if N is 3:
		if the Stelzer bones are unhandled, now the Stelzer bones are in SPO7;
	now the Stelzer position is N;
	try looking.

To say Stelzer room name:
	if the Stelzer position is:
		-- 0: say "Bridge";
		-- 1: say "Bridge (hanging underneath)";
		-- 2: say "Bridge (in the water underneath)";
		-- 3: say "Bridge".

To say Stelzer room description:
	if the Stelzer position is:
		-- 0: say "You are standing on a bridge in the middle of an echoing cavern. In the center of the bridge is a large [Stelzer adjective] sculpture constructed of pipes that climb up to a cauldron filled with an eerily glowing green moss, the only light source in the room.  Beneath your feet you can hear the crashing of the river below. Ahead of you, to your horror, there are slats missing on the bridge - you'll never make it across without replacing them.";
		-- 1: say "You are hanging precariously under the monstrous structure. The frayed rope digs into your palms painfully, but the deafening crash of the water beneath you keeps you clinging on for now.";
		-- 2: say "Beneath the surface of the tumultuous river, it is strangely calm down here. The sickly green water glows around [if the Stelzer anchor encloses the Stelzer flashlight]the metal trap[else]you[end if] in a spherical shape, pulsing in time with the luminescent moss. Through the haze of the turbid water, the bleached bones of some long dead creature almost shine with their pristine whiteness.";
		-- 3: say "You've moved through the cavernous jaws of the long dead beast and into the cavity of its immense chest. The pulsing light from the moss causes the shadows cast by the ribcage to expand and contract; in the semi-gloom it almost looks as if the creature is still breathing."

After going to SPO7 [when SPO7 is unvisited]:
	say "Your feet finally touch down on some blackened shore and into some large subterrane. The slick black stone of the cavern arcs high above your head with strange formations that grow downwards and then out in oddly perpendicular angles. The damp rock moves in and out of focus as some pulsing green light illuminates the space.[paragraph break]Taking a step, you feel the sand pulling at your shoes as though it were thick mud or quicksand. Your feet sink with every step, settling on some solid stone platform just beneath this layer of cloying sand that prevents you from being entirely swallowed.[paragraph break]You pass between two monolithic pillars: oily green-black stone of a height that makes you dizzy to comprehend. Between them, a skeletal bridge stretches out across the chasm.[paragraph break]The crossing spans a ravine of tumultuous water that roars like some uncaged beast and echoes around the cavern. Its Stygian call chills you and draws you in by equal measures as you take the first step onto the slats that form the bridge.";
	continue the action.

Section C - Movement

Instead of going when (the noun is down or the noun is up) and the location is SPO7:
	if the Stelzer position is 0:
		if the noun is up:
			say "The imposing marble of the bridge is perfectly, unnaturally smooth - there are no places to place your hands or feet in order to climb. You might be able to climb the pipes on the side of the sculpture, though.";
		else if the player is on the Stelzer protrusion:
			try exiting instead;
		else if the Stelzer rope is coiled:
			say "The violence of the water beneath you seems to be taunting you. Without something to hold onto, you would surely get swept away; your bones sinking into the silt, never to be seen again.";
		else if the Stelzer rope is lifted:
			say "The coils grow heavy in your arms. Leaning over the water, you allow the rope to slip through. As the end sinks into the water, you gingerly tighten your hands around the fraying fibres and lower yourself until you are just above the water. ";
			adjust the Stelzer position to 1;
		else:
			say "You gingerly tighten your hands around the fraying fibres and lower yourself until you are just above the water.";
			adjust the Stelzer position to 1;
	else if the Stelzer position is 1:
		if the noun is up:
			say "You haul yourself upward, the rope digging into your hands leaving them red and sore. With tremendous effort you finally pull yourself back over the edge of the bridge.";
			adjust the Stelzer position to 0;
		else if the Stelzer powder is uneaten:
			say "Without some way of breathing, you could never stay down there for long enough to make it worth the threat of hypothermia.";
		else unless we are Stelzer-ready: [This checks if we have the lamp properly assembled]
			if the player encloses the Stelzer flakes:
				say "The moss is glowing gently, providing light, but will probably drift away if you go underwater, leaving you in the dark.";
			else if the player encloses a lit thing:
				say "[The list of lit things enclosed by the player] [are] likely to go out without anything to protect [them] from the water.";
			else:
				say "You have no source of light. The water is awfully dark and who knows what could be lurking down there...";
		else:
			say "You lower yourself down, through the ceiling of crashing water, until you're beneath the surface. It is so cold you can feel your chest constricting and have to remind yourself to breathe. And surprisingly, down here, you can.";
			adjust the Stelzer position to 2;
	else if the Stelzer position is 2:
		if the noun is up:
			if the player encloses the Stelzer bones:
				say "The bones are impossibly heavy in your arms; every inch toward the surface is a chore. You are never going to get much further just by kicking. You need your arms free.";
			else:
				say "You pull on the rope, doing your best not to get caught in the current as your head breaks the surface of the water. You feel the spongiform blockage in your throat dissolve, your lungs filling with untainted oxygen.";
				now the Stelzer powder is uneaten;
				adjust the Stelzer position to 1;
		else:
			say "There is nothing below you but the thick layer of cloying black mud that makes up the bed of the river. The thought of being consumed entirely by that [Stelzer adjective] silt is horrifying to say the least.";
	else if the Stelzer position is 3:
		if the noun is up:
			say "You would need to get back to the rope before you could swim safely.";
		else:
			say "There is nothing below you but the thick layer of cloying black mud that makes up the bed of the river. The thought of being consumed entirely by that [Stelzer adjective] silt fills you with horror."

Instead of going when (the noun is not up and the noun is not down) and the location is SPO7 and the Stelzer position is not zero:
	say "Without anything to anchor you, you would be swept away in the current."

To sink is a verb. To nestle is a verb.
After dropping anything when the location is SPO7 and the Stelzer position is not zero:
	say "[The noun] [sink] [if the Stelzer position is greater than 1]to the bottom and [nestle] among the bones[else]out of sight into the water[end if].";
	now the noun is in the skeleton.

To decide whether we are Stelzer-ready:
	if the Stelzer flakes are not lit, no;
	if the Stelzer flashlight is open, no;
	if the player encloses the Stelzer flashlight, yes;
	if the Stelzer rope is sunken and the Stelzer anchor encloses the Stelzer flashlight, yes;
	no.

Instead of going east from SPO7 when the Stelzer bones are not on the Stelzer gap and the Stelzer position is zero:
	say "The void between the slat you stand upon and the next is far too wide to traverse. You must find something with which to repair the bridge."

Instead of climbing the Stelzer rope:
	if the Stelzer position is 0:
		try going down;
	if the Stelzer position is greater than 1:
		try going up;
	else:
		say "You'll need to specify whether you want to go up or down."

Understand "ascend" as up when the location is SPO7. Understand "descend" as down when the location is SPO7. Understand "climb [direction]" or "climb" as going when the location is SPO7.
Stelzer-climbing is an action applying to one visible thing and one thing. Understand "climb [direction] [thing]" as Stelzer-climbing when the location is SPO7.
Instead of Stelzer-climbing: try going the noun.

Instead of jumping when the location is SPO7:
	if the Stelzer position is less than two:
		say "The gap between the slats is too wide to jump[if the Stelzer bones are on the Stelzer gap], though you can now simply walk across[end if].[paragraph break][bracket]If you want to jump down into the water, try DOWN.[close bracket][paragraph break]";
	else:
		say "It's hard to jump while you're underwater."

[Instead of dropping something when the location is SPO7:
	if the Stelzer position is 0, continue the action;
	if the Stelzer position is 1, say "Anything you dropped would be lost.";
	if the Stelzer position is 2, say "Anything you dropped would be lost in the silt, though you might be able to put it inside the skeleton.";
	if the Stelzer position is 3, continue the action.]

Chapter 2 - Things

Section A - Rope and Anchor

A Stelzer rope is a privately-named thing in SPO7. The printed name of the Stelzer rope is "rope". Understand "rope" and "knot" as the Stelzer rope. It is fixed in place. The Stelzer rope can be coiled, lifted, or sunken. The Stelzer rope is coiled. The description of the Stelzer rope is "A thick rope, stained dark with water and made inflexible by remnants of mud. One loop is fastened to the bridge with an impenetrable knot, while the other end is attached to a misshapen piece of polished metal." 

A Stelzer anchor is part of the Stelzer rope. It is privately-named. The printed name of the Stelzer anchor is "metal claw-trap". Understand "misshapen" or "piece" or "metal" or "of metal" or "claw" or "trap" or "claw-trap" or "anchor" or "pristine" or "polished" or "piece" or "piece of" or "contraption" or "metallic" or "object" or "teeth" or "tooth" or "jaw" or "jaws" as the Stelzer anchor. It is a container. It is closed, transparent, and openable. The description of the Stelzer anchor is "A piece of metal bent into a strange configuration. Sharp prongs curl in and around themselves like a gaping maw. You wouldn't want to cut yourself on those teeth. [if open]The teeth are currently pried open[else]Curiously, the teeth are hinged, and could potentially be pried open[end if]."
Understand "pry open/-- [something] open/--" as opening when the location is SPO7.
After opening the Stelzer anchor: say "You pry the teeth open."
After closing the Stelzer anchor: say "You force the teeth shut[if something is in the Stelzer anchor] around [the list of things in the Stelzer anchor][end if]."
Does the player mean entering the Stelzer anchor: it is unlikely.

Rule for writing a paragraph about the Stelzer rope:
	if the Stelzer rope is coiled:
		if the Stelzer rope is not handled:
			say "What appears to be a rope is tied around one of the beams of the bridge. A ragged knot ties the other end to some misshapen piece of polished, almost pristine, metal while the rest of the rope is coiled neatly on the planks.";
		otherwise:
			say "The rope lies abandoned on the ground in a tangle, one end tied to the bridge, the other to some metallic contraption.";
	otherwise if the Stelzer rope is lifted:
		say "One end of a rope is tied around a beam of the bridge; the other end is attached to the strange metallic object in your arms.";
	otherwise:
		if the Stelzer position is:
			-- 0: say "A rope trails from the post of the bridge off into the turbulent water.";
			-- 1: say "A rope runs from the bridge above you down into the water below.";
			-- 2: say "A thick rope is your only lifeline anchoring you in the dark abyss.";
			-- 3: say "A rope runs upward from a piece of metal sunken in the [Stelzer adjective] silt nearby.";
	now the Stelzer rope is mentioned;
	now the Stelzer anchor is mentioned.

Instead of tying when the noun is the Stelzer rope or the second noun is the Stelzer rope:
	say "Stained with water and crusted silt, the rope is completely immalleable and both ends are already tied onto things."

Understand "untie [something]" as a mistake ("You pick at the knots, but their strange configurations and the rope being soaked through means they refuse to come undone.") when the location is SPO7.

Taking the Stelzer anchor is Stelzer-redirection. Dropping the Stelzer anchor is Stelzer-redirection. Pushing the Stelzer anchor is Stelzer-redirection. Pulling the Stelzer anchor is Stelzer-redirection. Inserting the Stelzer anchor into something is Stelzer-redirection. Putting the Stelzer anchor on something is Stelzer-redirection. Throwing the Stelzer anchor at something is Stelzer-redirection.
First before Stelzer-redirection:
	now the noun is the Stelzer rope;
	continue the action.

Instead of pulling or taking the coiled Stelzer rope:
	say "You get your hand under the coils of rope and manage to lift them up. The added weight of the water drags down your tired limbs.";
	now the Stelzer rope is lifted;
	now the Stelzer rope is handled.

Instead of dropping the lifted Stelzer rope:
	say "You let the rope fall in an untidy coil back onto the bridge.[paragraph break][bracket]If you meant to throw it over the side, try THROW ROPE INTO WATER[close bracket][paragraph break]";
	now the Stelzer rope is coiled.

Before going from SPO7 when the Stelzer rope is lifted:
	say "(first dropping the rope)[command clarification break]";
	try dropping the Stelzer rope;
	if the Stelzer rope is lifted, say "The rope only has so much slack in it and eventually you reach as far as you can go." instead.

After taking inventory when the Stelzer rope is lifted:
	say "You are also carrying the strange claw-shaped metal trap and the rope attached to it. Its menacing jaw glints in the [Stelzer adjective] gloom.";
	continue the action.

Instead of pushing when (the noun is the Stelzer rope or the noun is the Stelzer anchor) and the Stelzer rope is not sunken:
	say "You loop the rope around your hands, placing the strange metal contraption on the wall of the bridge. Giving the [Stelzer adjective] apparatus a hard shove, you send it tumbling over the edge into the water.";
	now the Stelzer rope is sunken.
Instead of throwing the Stelzer rope at something when the Stelzer rope is not sunken:
	say "You heave the piece of metal toward [the second noun]. It bounces once off the side of the bridge and splashes down into the water, the rope trailing behind it.";
	now the Stelzer rope is sunken.

Instead of putting the Stelzer rope on the Stelzer water: try pushing the Stelzer rope.
Instead of inserting the Stelzer rope into the Stelzer water: try pushing the Stelzer rope.

Instead of taking or pushing or pulling the sunken Stelzer rope:
	if the Stelzer position is 0:
		say "You tug hard, finding that something beneath the water pulls against you with equal or even greater force in the very opposite direction, till you are almost dragged off your feet and into the water. A second later, the strange force relents, and you stumble backward, pulling the anchor up onto the bridge.";
		if the Stelzer anchor is open and there is something in the Stelzer anchor:
			repeat with the item running through things in the Stelzer anchor:
				now the item is in the Stelzer skeleton;
			say "It hangs open and empty, having abandoned its cargo in the depths. Perhaps it wasn't closed properly.";
		now the Stelzer rope is handled;
		now the Stelzer rope is coiled;
	otherwise if the Stelzer position is 1 or the Stelzer position is 2:
		say "You tug on the rope, and it still seems to be firmly anchored up above.";
	otherwise if the Stelzer position is 3:
		try exiting instead.

Definition: a thing is Stelzer-anchored if (it is the Stelzer anchor or it is enclosed by the Stelzer anchor) and the Stelzer rope is sunken.
Instead of doing anything with a Stelzer-anchored thing when the Stelzer position is less than 2:
	say "It's deep beneath the surface of the water: you'd need to pull it up, or go down there yourself."

Instead of dropping the Stelzer rope when the Stelzer position is one or the Stelzer position is two:
	say "Without something to hold onto you would get swept away by the current."

Section B - Breathing Weed

Some Stelzer weed is a privately-named Stelzer-vanishing thing. It is fixed in place. "There is some strange semi-aquatic weed growing upside-down from the bottom of the bridge, a [Stelzer adjective] hybrid of what seems to be a mushroom and a coral." The printed name of the Stelzer weed is "bizarre weed". Understand "weed" or "mushroom" or "hybrid" or "bizarre" or "coral" or "frond" or "fronds" or "fungus" as the Stelzer weed. It is ambiguously plural. The description of the Stelzer weed is "A type of flora or perhaps fungi unfamiliar to you. The orange myceloid root structure apparently anchoring it to the bridge is reminiscent of a mushroom, but the pale, calcified protrusions that extend downwards appear akin to bleached coral, branching out in an almost bronchial form.".

Some Stelzer powder is a privately-named thing. The printed name of the Stelzer powder is "fungal powder". Understand "powder" or "dust" or "spore" or "spores" or "residue" or "fungal" or "finger" or "fingers" or "hand" or "hands" as the Stelzer powder. It is not plural-named. The description of the Stelzer powder is "Your fingers are coated with pale, brown dust expelled from the [Stelzer adjective] weed growing under the bridge."

A Stelzer bat is a privately-named Stelzer-vanishing animal. "[if perching]Hanging from the stone is something similar in form, if not in texture, to a [Stelzer adjective] bat[else]A few ripples are the only remaining sign of the batlike creature[end if].". The printed name of the Stelzer bat is "batlike creature". Understand "bat" or "batlike" or "creature" or "animal" or "strange" or "hanging" as the Stelzer bat.  The Stelzer bat can be perching or underwater.  The Stelzer bat is perching.

Instead of examining the Stelzer bat:
	if a Stelzer bat is underwater:
		say "The bat has disappeared beneath the waves, making further zoological study impossible.";
	otherwise:
		say "While the creature has the same chiropteran features as a common bat, its 'wings' are the color of rotting meat and have a [Stelzer adjective] glutinous texture. As you strain your eyes to examine the [Stelzer adjective] fauna, it begins to nibble on the strange weed. It opens its mouth in a yawn and you see the creature's tongue coated with a thin film of pale brown powder. After a few moments it gives a gesture approximately equatable to a sneeze before letting go of its perch and dropping into the water like a stone.";
		now a Stelzer bat is underwater.

Instead of taking or touching or pushing or pulling or turning the Stelzer weed:
	say "Your fingers brush against the [Stelzer adjective] coral hybrid and are now covered in some strange powder. If the organism is truly analogous to a fungal specimen, you suppose, perhaps, these are its spores.";
	now the player carries the Stelzer powder;
	set pronouns from the Stelzer powder.

First instead of dropping the Stelzer powder:
	say "You manage to rub the powder off your hands. It seems to disintegrate rather quickly.";
	now the Stelzer powder is nowhere.
First instead of inserting the Stelzer powder into something:
	say "You rub the powder off your fingers into [the second noun]. It dissipates without effect.";
	now the Stelzer powder is nowhere.
First instead of putting the Stelzer powder on something: try inserting the noun into the second noun. 

The Stelzer powder can be eaten or uneaten. The Stelzer powder is uneaten. The Stelzer powder has a number called the death counter.

Instead of eating or tasting the Stelzer weed: say "It is a bit too far away to get your mouth to it, though you could reach out and touch it."

Understand "lick [something]" as tasting when the location is SPO7.
Instead of smelling the Stelzer powder, say "It stings your nose and makes you sneeze, just like the bat. Perhaps it needs to be consumed in order to have its effects."
Instead of eating or tasting the Stelzer powder:
	say "Cautiously, you extend your tongue and lick the powder off your fingertips. It tastes like a [Stelzer adjective] combination of salt and earth. Almost immediately you begin to choke, the sensation of something germinating rapidly within the walls of your throat. Whatever it is seems to be sucking all the moisture from your windpipe as it grows exponentially, its branching structure blocking the air from entering your lungs.";
	now the Stelzer powder is eaten;
	now the death counter of the Stelzer powder is 3.

Instead of going down when the location is SPO7 and the Stelzer position is 1 and the Stelzer powder is eaten:
	if we are Stelzer-ready, continue the action;
	try drinking the Stelzer water instead.
Instead of drinking or tasting the Stelzer water when the Stelzer powder is eaten:
	say "You thrust your head down into the black water for just a moment and force yourself to swallow. The water seems to sate the [Stelzer adjective] fungus, and when you rise up again you manage to cough it out. But for that moment you were underwater, you felt a rush of oxygen in your lungs...perhaps if you had a light, you could stay down there?";
	now the Stelzer powder is uneaten.

Every turn when the Stelzer powder is eaten and the Stelzer position is less than 2:
	decrement the death counter of the Stelzer powder;
	if the death counter of the Stelzer powder is:
		-- 2: say "Your mouth and throat feel horribly dry. You cough painfully.";
		-- 1: say "You're having difficulty breathing as the [Stelzer adjective] fungus clogs your windpipe, leeching every bit of moisture out of your tongue and throat.";
		-- 0:
			say "You are gasping for air, but can get no relief. As your vision starts to blur and darken around the edges, you can feel the [Stelzer adjective] organism crawling up your throat, distending your windpipe until its branching fronds force your mouth open and you can feel it crawling over your lips.";
			end the story saying "You have drowned in the air".

Section C - Glowing Vegetation

The Stelzer sculpture is part of the Stelzer bridge. It is privately-named and ambiguously plural. Understand "strange" and "sculpture" and "pipes" and "pipe" and "labyrinthine" and "network" as the Stelzer sculpture. The printed name of the Stelzer sculpture is "strange sculpture". The description of the Stelzer sculpture is "A labyrinthine network of pipes form the base of the structure, climbing up to a wide, shallow cauldron filled with luminescent green moss. Some crack in the ceiling allows a steady drip of [Stelzer adjective] liquid to fall on the moss and it pulses with light in time with the regular falling of the fluid. At the bottom of the sculpture, one of the pipes flows into a circular pool of liquid. Beside the pool, there is a brazier filled with some manner of desiccated organic material.".

The Stelzer protrusion is Stelzer-vanishing scenery in SPO7. It is privately-named. The printed name of the Stelzer protrusion is "protrusion". The description of the Stelzer protrusion is "One of the pipes juts out at a useful angle enabling you to climb up the [Stelzer adjective] structure.". It is an enterable supporter.
Instead of climbing when the noun is the Stelzer sculpture or the noun is the Stelzer protrusion or the noun is the Stelzer cauldron: try entering the Stelzer protrusion.
After entering the Stelzer protrusion:
	say "With a little difficulty, you manage to haul your way up the sculpture until you are about halfway up. From here, you can see a strange outline under the water.";
	now the Stelzer outline is in SPO7.
The Stelzer outline is a Stelzer-vanishing thing. It is fixed in place and privately-named. "You peer beneath the [one of]sickly, putrid green colour of the river[or]voidish blackness that seems to absorb all light[or]crashing white froth, hissing and spitting up at you[or]swirling inky purple of the river[at random]. Strange... From here it almost looks as if you can see the outline of something, just visible under the water.". The printed name of the Stelzer outline is "outline". Understand "outline" or "strange" as the Stelzer outline. The description of the Stelzer outline is "The outline of some strange formation under the water catches your eye. Bleached white and unmoving - perhaps a skeleton?". Instead of doing anything other than examining with the Stelzer outline: say "It's deep beneath the water. You'd have to go down there yourself to do that."

Instead of eating or tasting the Stelzer sculpture: say "The pipes are ice-cold on your tongue. You pull away before your tongue gets frozen to the metal.".

The Stelzer pool is part of the Stelzer sculpture. It is privately-named. The printed name of the Stelzer pool is "pool of foul liquid". The description of the Stelzer pool is "A shallow pool of foul liquid that flows from the [Stelzer adjective] pipes of the structure.". Understand "shallow" or "pool" or "circular" or "liquid" or "foul" or "pipe" or "viscous" or "oily" or "oil" as the Stelzer pool.
Instead of eating or drinking or tasting the Stelzer pool:
	say "You dip your fingers into the [Stelzer adjective] liquid and bring it to your lips. It has a [Stelzer adjective] metallic tang that cloys at the back of your throat until it starts to burn.";
	if the Stelzer powder is eaten:
		say "[paragraph break]This seems to sate the [Stelzer adjective] powder in your throat, but only temporarily.";
		increase the death counter of the Stelzer powder by 2.
Instead of smelling the Stelzer pool: say "Invisible noxious vapors burn your nostrils as you lean close to smell.".
Instead of touching the Stelzer pool: say "The liquid is viscous and oily."
Instead of taking the Stelzer pool: say "You cup a bit in your bare hands, but it drips away, leaving only an oily residue which you rub away on your pants."
Instead of inserting something into the Stelzer pool: say "You get a bit of [Stelzer adjective] oil on [the noun]."

The Stelzer crack is privately-named scenery in SPO7. The printed name of the Stelzer crack is "crack in the ceiling". Understand "crack" or "ceiling" or "in the/-- ceiling" as the Stelzer crack. Instead of doing anything with the Stelzer crack: say "It is too far away to even see clearly, but the foul liquid must be dripping from somewhere."

The Stelzer cauldron is part of the Stelzer sculpture. The printed name of the Stelzer cauldron is "cauldron". Understand "wide" or "shallow" or "cauldron" or "luminescent" or "green" or "moss" or "wet" or "light" or "flickering" as the Stelzer cauldron. Instead of doing anything with the Stelzer cauldron: say "[if the player is on the Stelzer protrusion]From here you can see that the moss in the cauldron is the same kind as is down in the brazier, macerated by the dripping liquid falling from the crack in the ceiling and collecting in the pipes. It[else]It is too high above you to see clearly from here, but something in the cauldron[end if] seems to flare up with each drop of liquid, filling the area with a flickering green light."
Instead of doing anything except climbing or examining with the Stelzer cauldron:
	say "The cauldron is too far away to reach, but the same liquid seems to flow down through the pipes into the shallow pool."
Instead of inserting something into the Stelzer cauldron: try touching the Stelzer cauldron.

The Stelzer brazier is part of the Stelzer sculpture. It is privately-named. The printed name of the Stelzer brazier is "iron brazier". Understand "iron" or "brazier" or "twisted" as the Stelzer brazier. The description of the Stelzer brazier is "Formed of twisted iron, it contains clumps of dry vegetation."

The Stelzer vegetation is part of the Stelzer brazier. It is privately-named. The printed name of the Stelzer vegetation is "dry vegetation". Understand "dry" or "vegetation" or "clump" or "clumps" or "crumbly" or "dead" or "long dead"  or "leaves"or "long-dead" or "plant" or "plants" as the Stelzer vegetation. The description of the Stelzer vegetation is "Although definitely organic, it's dry and crumbly and long-dead. It's hard to tell at this point whether it was a plant or a moss or something defying classification entirely."
Instead of inserting the Stelzer vegetation into something:
	if the Stelzer flakes are off-stage, try taking the Stelzer vegetation;
	try inserting the Stelzer flakes into the second noun.

Some Stelzer flakes are a privately-named thing. The printed name of the Stelzer flakes is "flakes of plant matter". Understand "flakes" or "plant" or "of plant" or "matter" or "brittle" or "moss" as the Stelzer flakes. The description of the Stelzer flakes is "Flakes of some desiccated, dusty plant matter. Touching them makes your fingers itch[if lit]. They've swelled up on contact with the oil and are now shining with [articulated Stelzer adjective] green light[end if].".

Instead of eating or tasting the Stelzer vegetation: say "When you attempt to pick up one of the leaves, it crumbles to ash under your fingers covering them in flakes.".

Instead of eating or tasting the Stelzer flakes: say "The flakes fizzle on your tongue with a crackle until they completely dissolve."

Instead of taking the Stelzer vegetation when the player encloses the lit Stelzer flakes or the Stelzer anchor encloses the lit Stelzer flakes:
	say "You already have some of it glowing, you probably don't need any more."
Instead of taking the Stelzer vegetation:
	say "You rub at one of the ashen leaves and it crumbles under your touch, leaving you with a few brittle flakes.";
	now the Stelzer flakes are not lit;
	now the player carries the Stelzer flakes;
	set pronouns from the Stelzer flakes.

Instead of dropping the Stelzer flakes:
	say "The flakes scatter and are lost, instantly disintegrating in the air [if the Stelzer flakes are lit]. Their glow fades as they vanish from view[end if].";
	remove the Stelzer flakes from play.

Instead of inserting the Stelzer flakes into the Stelzer pool:
	say "The flakes glow brightly for a few moments as they sink to the bottom of the pool before dissolving.";
	remove the Stelzer flakes from play.

After inserting the Stelzer flakes into the oily Stelzer flashlight:
	say "The flakes start to pulse with the same verdant glow as the moss when they come in contact with the liquid inside. A contracting and expanding sphere of green light surrounds you.";
	now the Stelzer flakes are lit.

Section D - Flashlight and Bulb

[This is defined elsewhere, and brought in from another room.]
The printed name of the Stelzer flashlight is "waterproof flashlight". Understand "lamp" or "waterproof" or "water proof" or "light" or "flashlight" or "torch" [for the Brits] as the Stelzer flashlight.
After printing the name of the Stelzer flashlight: omit contents in listing. [Don't show (closed) or (in which is…)]

Rule for deciding whether all includes something enclosed by the Stelzer flashlight when taking: it does not. [Don't have TAKE ALL try to take the bulb]

A Stelzer ring is part of the Stelzer flashlight. It is privately-named. The printed name of the Stelzer ring is "rubber ring". Understand "ring" or "rubber" as the Stelzer ring. The description of the Stelzer ring is "It allows the flashlight to be opened easily to change the batteries, while also being waterproof when closed."
Understand "seal [something]" as closing when the location is SPO7. Understand "unseal [something]" as opening when the location is SPO7. Before opening or closing the Stelzer ring: now the noun is the Stelzer flashlight.

Instead of examining the Stelzer flashlight:
	say "A small flashlight, with a rubber ring where it screws together to keep the water out[if wet]—though water has gotten in anyway[else if oily]—though some oily substance coats the inside[end if][if open]. It is currently open[end if]."; [An instead rule stops it from describing its contents afterward.]
	if the Stelzer flakes are in the Stelzer flashlight:
		say "[paragraph break]Inside the flashlight [if the Stelzer flakes are lit]is a clump of glowing[else]are some flakes of dry[end if] vegetation.";
	otherwise if the Stelzer flashlight is open:
		say "[paragraph break]It currently contains [a list of things in the Stelzer flashlight]."

Instead of taking off something enclosed by the Stelzer flashlight: try taking the noun.

A Stelzer bulb is a privately-named thing in the Stelzer flashlight. The printed name of the Stelzer bulb is "small light bulb". Understand "bulb" or "light bulb" or "burned" or "burned out" or "burnt" or "burnt out" or "small" or "filament" or "lightbulb" as the Stelzer bulb. The description of the Stelzer bulb is "The filament inside has burned through."
Instead of attacking the Stelzer bulb:
	say "The bulb shatters into miniscule shards of glass.";
	remove the Stelzer bulb from play.

Instead of tasting or eating the Stelzer bulb: say "You've heard it said, that if you manage to get a lightbulb all the way into your mouth without breaking it, the mechanism of the human jaw will never allow you to open your mouth wide enough to remove it again. The only way to get it out is to smash the glass. You have no intention of eating broken glass today.".

A Stelzer battery is a privately-named thing in the Stelzer flashlight. The printed name of the Stelzer battery is "dead battery". Understand "dead" or "battery" or "batteries" or "aa" or "aaa" as the Stelzer battery. The description of the Stelzer battery is "A single AAA battery, no longer functional."

Instead of eating or tasting the stelzer battery: say "This is the wrong type of battery for that to be effective. Plus it's dead.".

Instead of unlocking the Stelzer bulb with something: try taking the noun.
Instead of unlocking the Stelzer flashlight with something: try opening the noun.
Instead of turning the Stelzer bulb: try taking the noun.
Instead of turning the Stelzer flashlight: try opening the noun.

Instead of switching on or switching off the Stelzer flashlight:
	say "You flip the switch a few times, but no light is forthcoming[if the Stelzer battery is not in the Stelzer flashlight or the Stelzer bulb is not in the Stelzer flashlight]—unsurprisingly, since you've removed some key components[else]. It must have burned out.";
	if the Stelzer flakes are in the Stelzer flashlight and the Stelzer flakes are lit:
		say "[paragraph break]The vegetation inside glows with a pulsating green light."

After removing the Stelzer bulb from the Stelzer flashlight:
	say "You unscrew the dead bulb.";
	continue the action.

After inserting something into the Stelzer flashlight:
	say "You pack [the noun] into the gap inside the flashlight.".
After inserting the Stelzer bulb into the Stelzer flashlight:
	say "You screw the dead bulb back into its socket.".

Instead of inserting something Stelzer-unsuitable into the Stelzer flashlight:
	say "[The noun] [are] too large to fit into the flashlight."

Definition: something is Stelzer-unsuitable:
	if it is the Stelzer bulb, no;
	if it is the Stelzer flakes, no;
	if it is the Stelzer battery, no;
	yes.

The Stelzer flashlight can be dry, wet, or oily. The Stelzer flashlight is dry.

Instead of inserting the open Stelzer flashlight into the Stelzer water:
	say "You get some water on the flashlight[if the Stelzer flashlight is oily], washing away the strange liquid[end if].";
	now the Stelzer flashlight is wet;
	if the Stelzer flakes are in the Stelzer flashlight:
		say "The flakes of vegetation wash away.";
		now the Stelzer flakes are nowhere.
Before putting the Stelzer water on the Stelzer flashlight:
	try inserting the Stelzer flashlight into the Stelzer water instead.
Before inserting the Stelzer water into the Stelzer flashlight:
	try inserting the Stelzer flashlight into the Stelzer water instead.

Instead of inserting the open Stelzer flashlight into the Stelzer pool:
	say "You get some of the [Stelzer adjective] liquid on the flashlight.";
	now the Stelzer flashlight is oily;
	if the Stelzer flakes are in the Stelzer flashlight:
		say "The flora blooms within the flashlight as it greedily sucks up the liquid, quickly doubling in size. As it macerates, it begins to softly glow around the edges until the entire specimen is incandescent with green light.";
		now the Stelzer flakes are lit.
Before putting the Stelzer pool on the Stelzer flashlight:
	try inserting the Stelzer flashlight into the Stelzer pool instead.
Before inserting the Stelzer pool into the Stelzer flashlight:
	try inserting the Stelzer flashlight into the Stelzer pool instead.

Instead of inserting the closed Stelzer flashlight into when the second noun is the Stelzer pool or the second noun is the Stelzer water: say "You dip the flashlight into [the second noun] briefly, and the inside seems to remain perfectly dry."

Instead of rubbing the wet Stelzer flashlight:
	if the Stelzer flashlight is open:
		say "You rub away the water.";
		now the Stelzer flashlight is dry;
	otherwise:
		say "You rub the water off the outside, but there's some inside it as well.";
	say "[paragraph break][bracket]If you wanted to shine the flashlight at something, just use EXAMINE and the game will understand.[close bracket][paragraph break]".
Instead of rubbing the oily Stelzer flashlight:
	say "The liquid on it might not be safe to touch for long periods of time. At the very least it will probably stain your clothes.";
	say "[paragraph break][bracket]If you wanted to shine the flashlight at something, just use EXAMINE and the game will understand.[close bracket][paragraph break]".
Instead of rubbing the dry Stelzer flashlight:
	say "The flashlight already seems to be perfectly dry.";
	say "[paragraph break][bracket]If you wanted to shine the flashlight at something, just use EXAMINE and the game will understand.[close bracket][paragraph break]".

Section E - Water

Some Stelzer water is privately-named scenery in SPO7. It is not plural-named. The printed name of the Stelzer water is "water". Understand "water" or "river" or "current" or "tumult" as the Stelzer water. The description of the Stelzer water is "The river crashes through the cavern, its [Stelzer adjective] call echoing upon itself in cacophony. You are [one of]horrified[or]entranced[or]disgusted[or]strangely enamored[at random] by its [one of]sickly, putrid green color[or]voidish blackness that seems to absorb all light[or]crashing white froth, hissing and spitting up at you[or]swirling inky purple[or]peculiar illusion: it seems to swell with the shadows of ghosts[at random].".

Instead of eating or tasting or smelling the Stelzer water: say "Salty. You must be close to the sea."
Instead of taking the Stelzer water: say "You have nothing to carry it in."

Last instead of inserting something into the Stelzer water:
	try dropping the noun.

Understand "dip [something preferably held] in/into [something]" as inserting it into when the location is SPO7.

Understand "swing" as swinging when the location is SPO7. Rule for supplying a missing noun when swinging and the location is SPO7: now the noun is the Stelzer rope.
Instead of swinging the Stelzer rope:
	if the Stelzer position is one:
		say "You gather enough momentum to swing back and forth, getting close enough to see a variety of fish bones caught in the fronds around where the bat [if the Stelzer bat is perching]clings[else]was clinging[end if]. An aquatic bat? How strange. You wonder how it can manage to hold its breath that long.";
	else if the Stelzer position is zero:
		if the Stelzer rope is not sunken:
			say "You consider swinging the rope around above your head, but the metal contraption is heavy and you're liable to hurt yourself.";
		otherwise:
			say "The rope sways slightly in the water.";
	otherwise:
		say "You sway back and forth slightly on the rope."

Section F - Skeleton

The Stelzer skeleton is privately-named ambiguously plural scenery. The description of the Stelzer skeleton is "Lurking in the water before you, half-submerged in the silt, is the skeleton of some colossal beast. Its posture is contorted, as though it were twisting around to snap at something above it. The bones are completely bleached white; every scrap of flesh picked clean by a thousand passing creatures. Probably a predator, you determine from the sharp teeth, a few jagged and broken. Its cavernous jaw has been locked in place, open and inviting. The gap is just big enough to swim inside, if you are cautious.". The printed name of the Stelzer skeleton is "misshapen skeleton". Understand "dead" or "skeleton" or "beast" or "colossal" or "bleached" or "predator" or "bone" or "bones" or "cavernous" or "jaw" or "jaws" as the Stelzer skeleton. It is an enterable container. It is fixed in place. It is open and not openable.
Some Stelzer teeth are part of the Stelzer skeleton. They are privately-named. Understand "sharp" or "teeth" or "tooth" or "jagged" or "broken" as the Stelzer teeth. The printed name of the Stelzer teeth is "jagged teeth". The description of the Stelzer teeth is "Fangs might be a better word. Sharp, numerous, and utterly unforgiving; you feel very sorry for any creature prey to this [Stelzer adjective] creature.". Instead of entering the Stelzer teeth: try entering the Stelzer skeleton.
Does the player mean doing something other than entering with the Stelzer skeleton: it is unlikely.

Instead of taking when the noun is the Stelzer skeleton or the noun is the Stelzer teeth:
	say "[The noun] [are] too large and unwieldy to lift.[paragraph break][bracket]If you wanted to hold onto [them] for support, try ENTER THE SKELETON.[close bracket][paragraph break]".

After entering the Stelzer skeleton:
	say "Reluctantly letting go of the rope, you pull yourself through the water and into the mouth of the beast. Through the empty eye sockets, you can just make out your only anchor to the world above. You have to keep your limbs tight to your torso to prevent the sharp teeth raking across your skin; you'd hate to think what might come investigating down here if any blood spilled in the water.";
	adjust the Stelzer position to 3.
	
After exiting from the Stelzer skeleton:
	say "You extract yourself from the skeleton. Without the pulsating light from your lamp the illusion of breath vanishes, leaving nothing but lifeless bone. You take hold of the rope again, grateful to be anchored.";
	adjust the Stelzer position to 2.

Some Stelzer bones are a privately-named Stelzer-vanishing thing. They are fixed in place. The printed name of the Stelzer bones is "flat bones". Understand "flat" or "bone" or "bones" or "perpendicular" as the Stelzer bones. The initial appearance of the Stelzer bones is "[if portable]Several bones lie loosely across the bottom of the ribcage[else]Several bones are loosely coupled to the skeleton now. They protrude from the spine at an oddly perpendicular angle, almost geometric in its sharpness[end if]." The description of the Stelzer bones is "Unlike any skeleton or preserved fossil you have come across in any museum or textbook. These osseous structures are bizarrely flat and rectangular, protruding from the spine at an almost perfect right angle.".

Instead of taking the fixed in place Stelzer bones: say "They're firmly attached, some invasive species of coral cementing the skeleton in place. Although they do shift a bit when you pull on them, a much harder force is going to be needed to dislodge them entirely[one of].[or]—perhaps you could pull them free?[stopping]".
Understand "pull [something] free" as pulling when the location is SPO7.

Instead of pushing or pulling or attacking or turning the fixed in place Stelzer bones:
	say "With a violent shove you manage to dislodge the bones from the skeleton. Fragments of coral spiral down into the silt, never to be seen again.";
	now the Stelzer bones are portable.

Stelzer-attacking is an action applying to two things. Understand "attack [something] with/by/using [something]" as Stelzer-attacking when the location is SPO7.
Instead of Stelzer-attacking: try attacking the noun.

Section G - Gap

The Stelzer gap is privately-named Stelzer-vanishing scenery in SPO7. It is a supporter. The printed name of the Stelzer gap is "gap in the bridge". Understand "gap" or "void" or "between [the Stelzer slats]" or "in [the Stelzer bridge]" as the Stelzer gap.

Instead of putting something on the Stelzer gap when the noun is not the Stelzer bones:
	say "[The noun] [are] not long enough to bridge the gap."

Definition: something is Stelzer-bridgey if it is the Stelzer bridge or it is part of the Stelzer bridge.
Instead of Stelzer-repairing something Stelzer-bridgey:
	if the Stelzer position is not zero:
		say "You would have to return to the surface to do that effectively.";
	else:
		try putting the second noun on the Stelzer gap.
Before putting the Stelzer bones on something Stelzer-bridgey:
	now the second noun is the Stelzer gap.

After putting the Stelzer bones on the Stelzer gap:
	say "The bones fit into position easily, settling into the gaps left by the missing slats. You look down at your feet and finally notice: the entire walkway is constructed of the parts of this long dead, [Stelzer adjective] creature. You shiver involuntarily as your mind begins to imagine what [Stelzer adjective] race of beings would use bone as architecture. You shake the thought from your mind - it is time to leave this place."

Stelzer-repairing is an action applying to two things. Understand "repair [something]" or "fix [something]" or "bridge [something]" or "repair [something] with [something]" or "fix [something] with [something]" or "bridge [something] with [something]" as Stelzer-repairing when the location is SPO7.
Rule for supplying a missing second noun when Stelzer-repairing:
	if the Stelzer bones are enclosed by the player, now the second noun is the Stelzer bones;
	otherwise now the second noun is the Stelzer rope.
Does the player mean Stelzer-repairing the Stelzer slats: it is very likely.
Instead of Stelzer-repairing:
	say "[The noun] is most likely beyond repair."

Section H - Level 0 Scenery

A Stelzer bridge is privately-named Stelzer-vanishing scenery in SPO7. The printed name of the Stelzer bridge is "stone of the bridge". The description of the Stelzer bridge is "The body of the bridge is formed of some offensive metamorphic stone; as if marble had been tainted by the presence of [articulated Stelzer adjective] fungus that, aeons ago, had been subsumed into its surface. You are currently balancing on a walkway of calcareous slats." Understand "bridge" or "structure" or "offensive" or "metamorphic" or "stone" or "marble" or "surface" or "of the/-- bridge" as the Stelzer bridge.

Some Stelzer slats are part of the Stelzer bridge. They are privately-named. The printed name of the Stelzer slats is "slats of the walkway". The description of the Stelzer slats is "The calcareous slats that form the walkway feel strangely light underfoot; as though hollowed out and filled with air. In the gaps between, you can see the churning water below, stare too long and you are sure to become nauseous. Each platform stretches your legs as you move from one to the next; [one of]the gait of the bridge's architects must have been strange indeed[or]your foot nearly slips and you cry out as you fling yourself forward so as not to fall[or]the burn in your calves is quickly becoming excruciating[at random].[paragraph break]The taut cords that give the structure its shape appear to be woven in some complex [Stelzer adjective] plait that elongates and contracts with a slither as you step across.". Understand "slats" or "slat" or "calcareous" or "walkway" or "hollow" or "floor" or "of the/-- walkway" or "beam" or "beams" as the slats.

Some Stelzer cords are part of the Stelzer bridge. They are privately-named. The printed name of the Stelzer cords is "plaited cords". The description of the Stelzer cords is "As you look closer, the puce strands that make up the plait seem to move. Whether some optical illusion caused by their intricate braiding or something altogether more organic, you couldn't say. You look away quickly." Understand "cords" or "cord" or "strands" or "strand" or "puce" or "plait" or "taut" or "plaited" as the Stelzer cords.

Instead of eating or tasting the Stelzer cords: say "The [Stelzer adjective] braids slither under your tongue. What a horrible sensation!"

Some Stelzer formations are privately-named scenery in SPO7. The printed name of the Stelzer formations are "strange rock formations." The description of the Stelzer formations is "From the roof of the cavern hang strange formation in the jet black rock that grow downwards and then out in oddly perpendicular angles. As if stalactites had been urged to grow sideways by some bizarre quirk of gravity.". Understand "strange" or "rock" or "formation" or "formations" or "stalactite" or "stalagmite" or "stalactites" or "stalagmites" as the Stelzer formations.

Some Stelzer sand is privately-named Stelzer-vanishing scenery in SPO7. It is not plural-named. The printed name of the Stelzer sand is "ashen sand". Understand "ashen" or "sand" as the Stelzer sand. The description of the Stelzer sand is "The sand is strangely desiccated. No slime or glint of liquid, no reflection of light at all—just arid blackness, like dry charcoal from a dead fire. Upon closer inspection, it appears to consist of the crushed shells of some [Stelzer adjective] insect carapaces and tiny fragments of blackened bone."

Instead of eating or tasting the Stelzer sand: say "The sand is sharp on your tongue like tiny shards of glass. It tastes bitter and acrid and when you spit it out, there's a red tinge on your lips and the metallic taste of blood in your mouth."

Some Stelzer pillars are privately-named Stelzer-vanishing scenery in SPO7. The printed name of the Stelzer pillars is "pillars". Understand "pillar" or "monolith" or "monoliths" or "pillars" or "green" or "black" or "green-black" or "stone" or "oily" or "hieroglyphs" or "hieroglyphics" as the Stelzer pillars. The description of the Stelzer pillars is "Two monolithic pillars form the entrance to the bridge. Their oily green-black stone appears to be carved with hieroglyphics unknown to you, consisting for the most part of conventionalized aquatic symbols such as fishes, eels, octopi, crustaceans, molluscs, whales, and the like. Several characters obviously represented marine things which are unknown to the modern world. You shudder and tear your eyes away.".
