;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 4
Scriptname QF_S4S_LadyInRubber_080168D6 Extends Quest Hidden

;BEGIN ALIAS PROPERTY S4S_TheFuckinDoorToSkyrim
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_S4S_TheFuckinDoorToSkyrim Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY S4S_SigilStoneAlias
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_S4S_SigilStoneAlias Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY S4S_DollMaker
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_S4S_DollMaker Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE
SetObjectiveCompleted(0)
SetObjectiveDisplayed(10)
Alias_S4S_DollMaker.GetReference().MoveTo(Game.GetPlayer())
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_3
Function Fragment_3()
;BEGIN CODE
;Quick Release starting stage, releases you and has you return to Tamriel. 
;Then it moves to Stage 17 and sits there until the next update adds more.
SetObjectiveCompleted(10)
SetObjectiveDisplayed(20)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
Alias_S4S_SigilStoneAlias.getReference().Enable();
libs.AddToDisableDialogueFaction(S4S_DollMaster)
SetObjectiveDisplayed(0)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Actor Property S4S_DollMaster  Auto  

zadlibs Property libs  Auto  
