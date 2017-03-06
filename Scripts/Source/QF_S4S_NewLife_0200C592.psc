;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 4
Scriptname QF_S4S_NewLife_0200C592 Extends Quest Hidden

;BEGIN ALIAS PROPERTY S4S_NewLifeSpeaker
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_S4S_NewLifeSpeaker Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY PlayerAlias
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_PlayerAlias Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN AUTOCAST TYPE S4S_NewLifeTimer
Quest __temp = self as Quest
S4S_NewLifeTimer kmyQuest = __temp as S4S_NewLifeTimer
;END AUTOCAST
;BEGIN CODE
SetObjectiveDisplayed(0);
kmyQuest.StartTimer();
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_3
Function Fragment_3()
;BEGIN CODE
;S4S_LadyInRubber.Start();
;Stop();
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Quest Property S4S_LadyInRubber  Auto  
