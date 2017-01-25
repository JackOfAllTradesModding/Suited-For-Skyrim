;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname S4S_frag_NewLifeFG1_Primer Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
S4S_NewLifeSpeaker.ForceRefTo(akSpeaker);
S4S_NewLifeSpeaker.TryToEvaluatePackage();This should work. Might work without it
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

ReferenceAlias Property S4S_NewLifeSpeaker  Auto  
