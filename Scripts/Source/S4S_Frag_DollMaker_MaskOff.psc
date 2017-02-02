;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname S4S_Frag_DollMaker_MaskOff Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
libs.RemoveQuestDevice(PlayerREF, S4S_FelineMask2Inventory, S4S_FelineMask2Rendered, zad_DeviousHood, S4S_MaskFull)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Actor Property PlayerRef  Auto  

zadlibs Property libs  Auto  

Armor Property S4S_FelineMask2Inventory  Auto  

Armor Property S4S_FelineMask2Rendered  Auto  

Keyword Property S4S_MaskFull  Auto  

Keyword Property zad_DeviousHood  Auto  
