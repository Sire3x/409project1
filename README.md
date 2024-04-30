# 409project1
A proposal for the Malware Project we are working on.

# Proposal 
------------------------------------------------Emotet Trojan, "The King of Malware"-------------------------------------------------------------------

For my proposal I have decided to take a spin on one of my favorite hobbies, video games.  I am calling this malware, "FreeRacingSim", the idea is that it reaches out to the internet and find a racing sim online, from there it will download it and run it. Everything seems perfectly normal when you are playing the game but once you stop playing it it ends up deleting some of your registery keys.  It also aims at running the game continously so even if you were to close it it would attempt to just boot back up again, making the only way for it to be disabled is to restart your system or to do a hard wipe of your system.   

_Plan of Action_
* First I figured out how I could download the executable of the game I wanted and make it so that when it downloads it will run directly off of a .sh file. 
* After this I will make it so that it runs and seems completely normal, with the final version of the malware not including any mention of the deletion of the registry keys in place.
* Finally, I will ensure that the code actually operates as intended and hides itself from certain things and checks to see when the process ends. 

