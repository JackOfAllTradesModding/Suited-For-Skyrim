;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname S4S_frag_Urag_TakeStaff Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
;Remove slavemaker from inventory
;May need to clear alias first, so be it.
SlaveMakerReference.Clear()
Game.GetPlayer().RemoveItem(S4S_DwarvenSlaveMaker, 1)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

WEAPON Property S4S_DwarvenSlavemaker  Auto  

ReferenceAlias Property SlaveMakerReference  Auto  
