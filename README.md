
# SS64 95ani edited from 95ani by man from Nijikaku30 = FOR MUGEN 1.1 (because I used screen distance triggers)

Started some time in 2015 -- picked up and finished after the new year, 2019

I had this data on my computer and it was sitting around, so I thought I would put it to use. I have no great love for the game, but I used it as a test for cheat engine years back so I had all the system data required to convert it.

I needed something to test it on without putting too much effort into compiling new sprites and animations, and 95ani was my favorite of the windows characters in Nijikaku so I thought I would use him as a base. The entirety of his SFF and AIR are the same with the exception of added sprites for the system. CNS wise I've kept all the moves after some rearranging and removed all of the Nijikaku lines seeing how this is outside of the fullgame. The common is nothing more than a modified nijikaku common to update it to 1.0 era standards (remappal in 5900), and the variable based combo system from nijikaku is still intact.

There is both Slash and Bust, each making use of a different aspect of the original character.

Slash is "good," and is mostly tatami and sheathed sword play. I thought the original tatami moves had potential, but weren't taken to the next logical step. Each tatami command is now a separate helper, with a third command added for set ups, one of which includes a Baiken-styled launcher. Set up commands require the player to be standing on the edge of the tatami. This mode is probably better suited for defensive play.

Bust is "evil" so there's sword play and images/spirits take the role of tatami set ups. The set up command does not require the player to be standing anywhere, but the image does not last as long as the tatami and does not cancel into every move. Each image is, of course, a separate helper, allowing for set up play to work alongside the various images as well as the main body's attacks. Because the sword is used there are more offensive options available for the player.

The result is not SS64 per se, but instead focuses on its stamina bar, which I find interesting not simply because it requires the player to think about their actions, but that it punishes back dashing and jumping back in a similar manner to GG's tension meter draining if you move away from the fight. There is a rage meter, but weapon loss mechanics are ignored.

All of my data for the stamina bar and rage meter is directly from the game, meaning idiosyncracies in comparison to the 2D games are accurate, including the fact that rage in the first round of a fight is always midway, the rage explosion is only at max rage, and that the finisher is not an instant kill but based upon the amount of health lost--which, in the game seems to be different every time; with Haohmaru I once dealt 91% @ 61% health, and then the next time dealt 84% @ 50% (I did decide to use 84% at 50% if only because it's 50%).

Weapon loss mechanics are not implemented--perhaps a sin in creating a Samurai Shodown character (Arpa still strikes
fear into my heart concerning Samurai Shodown conversions)--but editing 95ani's sprites is not something I'm interested in.

I have also chosen to not adapt the C+D auto combo, which is the least interesting part of the game. It's really just
mashing A or B 5 times (SS64 is, at a glance, a godforsaken 2 button masher). It's more boring than the Method of Mayhem in the PS1 Samurai Spirits. At least that requires timed inputs with specific commands like Last Blade's speed mode.

If it wasn't obvious in my Buriki One escapades, I'm completely disinterested in individual characters and I'm only fascinated by the systems of games. My interest is attempting to create a 1:1 conversion of the system only, and I probably won't do anything else with this system after this, it was just a little intellectual game to see what I could do with the resources I had available. Gameplay wise the source is rather bare bones, being a nijikaku character, so I tried to do something with what I have. Maybe the character is good, maybe it isn't.


# Concerning tatami whiffs

I use "enemy, pos x" for several helpers, especially tatami.
If the width constants on a character are larger than the actual body (ex. suigin's Kannei), some tatami will whiff.
It's not on me to fix this.
_______________________________________
a				= light slash <br>
b				= heavy slash <br
x				= grab <br>
y				= backstep <br>
a+b				= forward slash <br>
abx/bxy	(in rage)		= explosion 
_______________________________________
Slash = Chivalry

F, D, DF, a			= with sheath <br>
F, D, DF, b			= with sheath <br>
D, F, a 			= lay tatami <br>
↪ D, F, a			= kill tatami (when on top of tatami edge) <br>
↪ D, F, b 			= tatami launch (when on top of tatami edge) <br>
↪ D, B, a 			= tatami ground (when on top of tatami edge) <br>
↪ D, B, b 			= tatami wall (when on top of tatami edge) <br>
  ↪ Hold a+b			= tatami push <br>
D, B, a 			= tatami ground <br>
D, B, b 			= tatami wall <br>
↪ Hold a+b			= tatami push <br>
F, DF, D, DB, B, x		= command grab <br>
B, DB, D ,DF, F, x		= command grab <br>
(MAX) B, DB, D ,DF, F, a+b	= 4½ tatami/4 tatami* <br>
ABX/BXY	(in explosion)		= Trapfloor <br>
_______________________________________
Bust = Treachery

F, D, DF, a			= with sword <br>
F, D, DF, b			= with sword <br>
D, F, a 			= lay image <br>
↪ D, F, a			= pass through <br>
D, F, b				= image a. overhead <br>
D, B, a 			= image strike low <br>
D, B, b 			= image strike high <br>
B ,D ,DB, a 			= g. overhead slash <br>
B ,D ,DB, b			= a. overhead slash <br>
F, DF, D, DB, B, x		= command grab <br>
B, DB, D ,DF, F, x		= command grab <br>
(MAX) B, DB, D ,DF, F, a+b	= Imageblade <br>
ABX/BXY	(in explosion)		= Natsu no Mirage <br>

*If a tatami is in play
_______________________________________

I would like to thank these people: <br>
SNK <br>
Jesuszilla - for the old cheat engine thread in 2015
