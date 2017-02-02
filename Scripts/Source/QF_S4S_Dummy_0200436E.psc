;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 25
Scriptname QF_S4S_Dummy_0200436E Extends Quest Hidden

;BEGIN ALIAS PROPERTY S4S_Journal2Alias
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_S4S_Journal2Alias Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY S4S_BleakcoastCaveObj
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_S4S_BleakcoastCaveObj Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY S4S_Urag
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_S4S_Urag Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY S4S_SlavemakerAlias
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_S4S_SlavemakerAlias Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY S4S_JournalAlias
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_S4S_JournalAlias Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY S4S_AlftlandChest
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_S4S_AlftlandChest Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY S4S_BrinehammerChest
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_S4S_BrinehammerChest Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY S4S_Hulda
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_S4S_Hulda Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY S4S_Mralki
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_S4S_Mralki Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY S4S_RubberRemoverAlias
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_S4S_RubberRemoverAlias Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_11
Function Fragment_11()
;BEGIN CODE
SetObjectiveCompleted(40);
SetObjectiveDisplayed(50);
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_13
Function Fragment_13()
;BEGIN AUTOCAST TYPE S4S_UragBondage
Quest __temp = self as Quest
S4S_UragBondage kmyQuest = __temp as S4S_UragBondage
;END AUTOCAST
;BEGIN CODE
;If MAster Stage == not bound
;all bindings added
;if not gagged
;gag
;else
;fail quest.
kmyQuest.TieHerUp()
;Note to self: add separate script to apply restraints.
;SetStage(46);
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_19
Function Fragment_19()
;BEGIN CODE
SetObjectiveCompleted(60);
SetObjectiveDisplayed(70);
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
SetObjectiveDisplayed(0); "Ask Mralki for More Information"
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_5
Function Fragment_5()
;BEGIN CODE
SetObjectiveCompleted(30);
SetObjectiveDisplayed(40);Ask at the Arcanaeum
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_9
Function Fragment_9()
;BEGIN CODE
;Player did not fuck the orc, this opens the dialogue where you have to beg him to restrain you.
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_15
Function Fragment_15()
;BEGIN CODE
;Player is now bound, re-enables alftland conversation.
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_21
Function Fragment_21()
;BEGIN CODE
SetObjectiveCompleted(70);
Alias_S4S_Journal2Alias.GetReference().Enable();
SetObjectiveDisplayed(80);
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_4
Function Fragment_4()
;BEGIN CODE
SetObjectiveCompleted(10);
Alias_S4S_JournalAlias.Clear();So the attached script no longer fires.
SetObjectiveDisplayed(30);Ask About the woman at the Bannered Mare
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_7
Function Fragment_7()
;BEGIN CODE
;Player fucked the orc, continue dialogue
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_17
Function Fragment_17()
;BEGIN CODE
SetObjectiveCompleted(50);
SetObjectiveDisplayed(60);
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE
SetObjectiveCompleted(10);
SetObjectiveDisplayed(20); "Search for any trace of the strange woman"
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_23
Function Fragment_23()
;BEGIN CODE
SetObjectiveCompleted(80);
SetObjectiveDisplayed(90);
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_1
Function Fragment_1()
;BEGIN CODE
SetObjectiveCompleted(0); "Ask Mralki for More Information"
Alias_S4S_JournalAlias.GetReference().Enable(True);
SetObjectiveDisplayed(10); "Find the strange woman in Rannveig's Fast"
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_3
Function Fragment_3()
;BEGIN CODE
;SetObjectiveCompleted(10);
;SetObjectiveDisplayed(25); Read the journal
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

S4S_UragBondage Property Handler  Auto  
