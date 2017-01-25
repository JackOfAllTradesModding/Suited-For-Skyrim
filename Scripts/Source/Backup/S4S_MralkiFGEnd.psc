;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname S4S_MralkiFGEnd Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
S4S_Intro.SetStage(202);End S4S_Intro
S4S_Dummy.Start();
S4S_Master.Start()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Quest Property S4S_Intro  Auto  

Quest Property S4S_Dummy  Auto  

Quest Property S4S_Master  Auto  
