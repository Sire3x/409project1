# 409project1
Create a proposal for Malware Project based on a well known malware attack or an exploitation of a new CVE

# Proposal 
------------------------------------------------Emotet Trojan, "The King of Malware"-------------------------------------------------------------------

For my proposal I have decided to do the Emotet Trojan.  Emotet was originally created in the form of a banking trojan.  It would access foreign devices and spy on any sensitive private data.  According to CISA's website.  The trojan would typically spread via phishing email attachments and links that, once clicked, launched the payload.  The malware would then attempt to proliferate within a network by brute forcing user credentials and writing to shared drives to then get any sensitive information or install other forms of malware onto the system.  Emotet is believed to be a malware strain/cybercrime operation based in Ukraine.  It was first detected in 2014 under the name Heodo, and started out as mentioned before, as a banking trojan.  

_Plan of Action_
* First I will do data collection to everything that is Emotet.  Emotet has had a lot of variations and a lot of uses so I think I will try to stick with a more basic configuration of Emotet where it is looking to be a platform for other malware.
* Once I have a compiled a good list over all the information from different configurations I will try to determine what exactly I want my malware to do.  At a basic stand point, I want it to get onto the system and get user credentials so it can then be a platform for other malware.
* I will then make some changes to how the malware operates.  For example, it talks about how it would use a brute force method to get the user crednetials. This is inefficient, and can be changed potentially it would be something I would 100% research to see if I could make it even better than it already was.
* At this point, I have all the information I need about what Emotet is, how it executes on the system, and things that I want to include/optimize inside of the malware.
* From here, I will focus on the creation and delivery of the malware.  We know from previous documentation of the malware that it is deliverable via phishing links, the example that it gave was a .docx file that would launch the payload once clicked.  I believe I can do something simialr to this.  As for the actual creation of the malware I will look for source code across the internet and on a variety of github repositories and use that as a platform for the creation and optimization of my malware.
* Finally, I should have the malware created and a way that once a link or file is clicked the payload can be executed.  If I have this then I can start analyzing how close I am to my real goal of trouble shooting any logical problems in the malware.
* The end goal is to have a payload execute once a link is clicked that allows me to have access to another users computer and track any personal information that they may input.  If I accomplish that in a reasonable time then I will try to also make it so that I can upload more malware to the system or have it start working as a botnet, another use that Emotet was capable of in its later forms.   

