;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname S4S_frag_Urag_answer1 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
S4S_Dummy.SetStage(42);
;consensual sex scene
sslThreadController Thread = SexLabUtil.QuickStart(akSpeaker, Player)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Quest Property S4S_Dummy  Auto  

Actor Property Player  Auto  
