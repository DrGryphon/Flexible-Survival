Version 1 of infected pool for fs by Hellerhound begins here.


Section 1 - Pure Pool

Pure pool is a situation.

purpol is a number that varies.
purpolu is a number that varies.





to wyvernify:
	repeat with y running from 1 to number of rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Wyvern":
			now monster is y;
			break;
	infect;
	infect;
	infect;    


instead of resolving a pure pool:
	if purpol is 0:
		say "You smell in the air a slight difference, seeming cleaner, more pure. You look around for the source.";
		say "You come across a pool of water in the park. Unlike the puddls in the city, this one is clean and clear, and you can see the red stones at the bottom. You take a small drink, and feel less thirsty.";
		decrease thirst by 10;
		increase purpol by 1;
	otherwise if purpol is 1:
		say "Exploring the park, you hear an echoing scream. It sounds like a wyvern, but what are those doing in the park?";
		say "Do you check out the situation?";
		if player consents:
			say "You follow the sound to the clear pool you found before. However, two wyverns are fighting. It is pretty obvious from the dialogue that they want to infect the pool, but cannot agree on who will do it first.";
			if cocks of player > 0 and libido of player > 50:
				if cockname of player is "Wyvern":
					say "You could help resolve the situation by corrupting the pond yourself. Do you wish to?";
					if the player consents:
						say "You begin stroking your [cock of player] [if cocks of player > 1][one of]cock[or]penis[or]shaft[or]maleness[at random][otherwise][one of]cocks[or]penises[or]shafts[or]malenesses[at random][end if], moaning as you do so. By the time the wyverns turn around and notice you, you are about to blow your load.";
						if a random chance of one in 2 succeeds:
							say "They begin stroking as well, rushing to come before you.";
						otherwise:
							say "They watch as you continue, stunned that someone would have the prococity to subvert their efforts.";
						say "You blow your load into the pool, thick streams of seed coming from your [cock length of player] inch long [cock of player] [if the cocks of player > 1][one of]cock[or]penis[or]shaft[or]maleness[at random][otherwise][one of]cocks[or]penises[or]shafts[or]malenesses[at random][end if] and scream as well. The seed sprays into the pool, making the water murky and infecting the whole thing. The water becomes cloudy and the clean smell in the air disappears.";
						now purpol is 4;
						now purpolu is 1;
		otherwise:
			say "Do you try to stop them?";
			if the player consents:
				challenge "Wyvern";
				say "After you finish with the first wyvern, the second attacks!";
				wait for any key;
				challenge "Wyvern";
				say "After freeing the pool from the danger of infection, you decide it owes you a good drink.";
				wait for any key;
				say "[line break] You drink away your thirst.";
				now thirst is 0;
			otherwise:
				say "You watch silently as the first wyvern overpowers the second, and begins to stroke. This is your last chance to intervene. Do you?";
				if the player consents:
					challenge "Wyvern";
					say "After you finish with the first wyvern, the second attacks!";
					wait for any key;
					challenge "Wyvern";
					say "After freeing the pool from the danger of infection, you decide it owes you a good drink.";
					wait for any key;
					say "[line break] Yo drink away your thirst.";
					now thirst is 0;                       
				otherwise:
					say "You watch as the wyvern screams just like it did before.";
					if perception of player is greater than 12:
						decrease perception by 2;
						say "The blast damages your eardrums. (perception -2)";
					say "Then the wyvern blows its load into the pool, clouding the water and dissapating the clean smell about the area.";
					now purpol is 4;
	otherwise if purpol is 4:
		say "You find the infected pool";
		if purpolu is greater than 0:
			say " that you infected before.";
		otherwise:
			say " that you watched the wyvern infect.";
		say "Do you wish to drink from it?";
		if the player consents:
			say "You dip your head into the cloudy pool and drink deeply.";
			wyvernify;
		otherwise:
			say "You keep clear of the infected water.";

infected pool for fs ends here.