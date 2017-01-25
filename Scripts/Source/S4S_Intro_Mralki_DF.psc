;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname S4S_Intro_Mralki_DF Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
;Ends quest and dialogue. Starts S4S_Dummy and Timer
S4S_Intro.SetStage(202);
;S4S_Master.Start();
S4S_Dummy.Start();
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Quest Property S4S_Intro  Auto  

Quest Property S4S_Dummy  Auto  

Quest Property S4S_Master  Auto  
