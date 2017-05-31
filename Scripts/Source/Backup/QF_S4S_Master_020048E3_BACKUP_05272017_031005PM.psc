;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 25
Scriptname QF_S4S_Master_020048E3 Extends Quest Hidden

;BEGIN ALIAS PROPERTY S4S_PlayerAlias
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_S4S_PlayerAlias Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_23
Function Fragment_23()
;BEGIN AUTOCAST TYPE s4s_masterscript
Quest __temp = self as Quest
s4s_masterscript kmyQuest = __temp as s4s_masterscript
;END AUTOCAST
;BEGIN CODE
;Mask Stage 3
kmyQuest.ExpandSuit(160);
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_24
Function Fragment_24()
;BEGIN AUTOCAST TYPE s4s_masterscript
Quest __temp = self as Quest
s4s_masterscript kmyQuest = __temp as s4s_masterscript
;END AUTOCAST
;BEGIN CODE
;Final
kmyQuest.ExpandSuit(170);
S4S_NewLife.Start()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_15
Function Fragment_15()
;BEGIN AUTOCAST TYPE s4s_masterscript
Quest __temp = self as Quest
s4s_masterscript kmyQuest = __temp as s4s_masterscript
;END AUTOCAST
;BEGIN CODE
;Suit Stage 8
kmyQuest.ExpandSuit(90);
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_10
Function Fragment_10()
;BEGIN AUTOCAST TYPE s4s_masterscript
Quest __temp = self as Quest
s4s_masterscript kmyQuest = __temp as s4s_masterscript
;END AUTOCAST
;BEGIN CODE
;Suit stage 3
kmyQuest.ExpandSuit(40);
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_14
Function Fragment_14()
;BEGIN AUTOCAST TYPE s4s_masterscript
Quest __temp = self as Quest
s4s_masterscript kmyQuest = __temp as s4s_masterscript
;END AUTOCAST
;BEGIN CODE
;Suit Stage 7
kmyQuest.ExpandSuit(80);
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_7
Function Fragment_7()
;BEGIN AUTOCAST TYPE s4s_masterscript
Quest __temp = self as Quest
s4s_masterscript kmyQuest = __temp as s4s_masterscript
;END AUTOCAST
;BEGIN CODE
;Inflate the Collar
kmyQuest.ExpandSuit(10);
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_9
Function Fragment_9()
;BEGIN AUTOCAST TYPE s4s_masterscript
Quest __temp = self as Quest
s4s_masterscript kmyQuest = __temp as s4s_masterscript
;END AUTOCAST
;BEGIN CODE
;Suit Stage 2
kmyQuest.ExpandSuit(30);
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_22
Function Fragment_22()
;BEGIN AUTOCAST TYPE s4s_masterscript
Quest __temp = self as Quest
s4s_masterscript kmyQuest = __temp as s4s_masterscript
;END AUTOCAST
;BEGIN CODE
;Mask Stage 2
kmyQuest.ExpandSuit(150);
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_17
Function Fragment_17()
;BEGIN AUTOCAST TYPE s4s_masterscript
Quest __temp = self as Quest
s4s_masterscript kmyQuest = __temp as s4s_masterscript
;END AUTOCAST
;BEGIN CODE
;Gloves Stage 2
kmyQuest.ExpandSuit(110);
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_6
Function Fragment_6()
;BEGIN AUTOCAST TYPE S4S_MasterTimer
Quest __temp = self as Quest
S4S_MasterTimer kmyQuest = __temp as S4S_MasterTimer
;END AUTOCAST
;BEGIN CODE
kmyQuest.ResetTimer(false,False) ; Starts short timer to inflate the collar
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_16
Function Fragment_16()
;BEGIN AUTOCAST TYPE s4s_masterscript
Quest __temp = self as Quest
s4s_masterscript kmyQuest = __temp as s4s_masterscript
;END AUTOCAST
;BEGIN CODE
;Gloves Stage 1
kmyQuest.ExpandSuit(100);
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_12
Function Fragment_12()
;BEGIN AUTOCAST TYPE s4s_masterscript
Quest __temp = self as Quest
s4s_masterscript kmyQuest = __temp as s4s_masterscript
;END AUTOCAST
;BEGIN CODE
;Suit Stage 5
kmyQuest.ExpandSuit(60);
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_11
Function Fragment_11()
;BEGIN AUTOCAST TYPE s4s_masterscript
Quest __temp = self as Quest
s4s_masterscript kmyQuest = __temp as s4s_masterscript
;END AUTOCAST
;BEGIN CODE
;Suit Stage 4
kmyQuest.ExpandSuit(50);
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_8
Function Fragment_8()
;BEGIN AUTOCAST TYPE s4s_masterscript
Quest __temp = self as Quest
s4s_masterscript kmyQuest = __temp as s4s_masterscript
;END AUTOCAST
;BEGIN CODE
;Suit Stage 1
kmyQuest.ExpandSuit(20);
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_21
Function Fragment_21()
;BEGIN AUTOCAST TYPE s4s_masterscript
Quest __temp = self as Quest
s4s_masterscript kmyQuest = __temp as s4s_masterscript
;END AUTOCAST
;BEGIN CODE
;MaskStage 1
kmyQuest.ExpandSuit(140);
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_13
Function Fragment_13()
;BEGIN AUTOCAST TYPE s4s_masterscript
Quest __temp = self as Quest
s4s_masterscript kmyQuest = __temp as s4s_masterscript
;END AUTOCAST
;BEGIN CODE
;Suit Stage 6
kmyQuest.ExpandSuit(70);
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_20
Function Fragment_20()
;BEGIN AUTOCAST TYPE s4s_masterscript
Quest __temp = self as Quest
s4s_masterscript kmyQuest = __temp as s4s_masterscript
;END AUTOCAST
;BEGIN CODE
;Boots Stage 1
kmyQuest.ExpandSuit(120);
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Armor Property S4S_FelineCollarUninflatedInventory Auto;
Armor Property S4S_FelineCollarUninflatedRendered Auto;
Armor Property S4S_FelineCollarInflatedInventory Auto;
Armor Property S4S_FelineCollarInflatedRendered Auto;

Armor Property S4S_FelineBootsUninflatedInventory Auto;
Armor Property S4S_FelineBootsUninflatedRendered Auto;
Armor Property S4S_FelineBootsInflatedInventory Auto;
Armor Property S4S_FelineBootsInflatedRendered Auto;

Armor Property S4S_FelineGlovesUninflatedInventory Auto;
Armor Property S4S_FelineGlovesUninflatedRendered Auto;
Armor Property S4S_FelineGlovesInflatedInventory Auto;
Armor Property S4S_FelineGlovesInflatedRendered Auto;

Armor Property S4S_FelineMask1Inventory Auto;
Armor Property S4S_FelineMask2Inventory Auto;
Armor Property S4S_FelineMask1Rendered Auto;
Armor Property S4S_FelineMask2Rendered Auto;

Armor Property S4S_FelineSuit1Inventory Auto;
Armor Property S4S_FelineSuit2Inventory Auto;
Armor Property S4S_FelineSuit3Inventory Auto;
Armor Property S4S_FelineSuit1Rendered Auto;
Armor Property S4S_FelineSuit2Rendered Auto;
Armor Property S4S_FelineSuit3Rendered Auto;
zadlibs Property libs  Auto  

Message Property S4S_msgEquipBoots1  Auto  

Message Property S4S_msgEquipBoots2  Auto  

Message Property S4S_msgEquipCollarInflated  Auto  

Message Property S4S_msgEquipFinal  Auto  

Message Property S4S_msgEquipGloves1  Auto  

Message Property S4S_msgEquipGloves2  Auto  

Message Property S4S_msgEquipMask1  Auto  

Message Property S4S_msgEquipMask2  Auto  

Message Property S4S_msgEquipSuit1  Auto  

Message Property S4S_msgEquipSuit2  Auto  

Message Property S4S_msgEquipSuit3  Auto  


Actor Property PlayerRef  Auto  

Keyword Property S4S_Boots  Auto  

Keyword Property S4S_BootsFull  Auto  

Keyword Property S4S_Collar  Auto  

Keyword Property S4S_CollarFull  Auto  

Keyword Property S4S_Gloves  Auto  

Keyword Property S4S_GlovesFull  Auto  

Keyword Property S4S_MaskFull  Auto 
Keyword Property S4S_Mask  Auto  

Keyword Property S4S_Suit  Auto  

Keyword Property S4S_SuitMore  Auto  

Keyword Property S4S_SuitFull  Auto  

Quest Property S4S_NewLife  Auto  
