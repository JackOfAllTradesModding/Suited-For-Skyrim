;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 20
Scriptname QF_S4S_Master_020048E3 Extends Quest Hidden

;BEGIN FRAGMENT Fragment_6
Function Fragment_6()
;BEGIN AUTOCAST TYPE S4S_MasterTimer
Quest __temp = self as Quest
S4S_MasterTimer kmyQuest = __temp as S4S_MasterTimer
;END AUTOCAST
;BEGIN CODE
kmyQuest.ResetTimer(False, False) ; Starts short timer
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_13
Function Fragment_13()
;BEGIN AUTOCAST TYPE S4S_MasterTimer
Quest __temp = self as Quest
S4S_MasterTimer kmyQuest = __temp as S4S_MasterTimer
;END AUTOCAST
;BEGIN CODE
;Equip Uninflated Boots
libs.EquipDevice(PlayerRef, S4S_FelineBootsUninflatedInventory, S4S_FelineGlovesUninflatedRendered, S4S_Boots)
;Show Message
S4S_msgEquipBoots1.Show()
;Start Timer (Short)
kmyQuest.ResetTimer(False, False);
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_8
Function Fragment_8()
;BEGIN AUTOCAST TYPE S4S_MasterTimer
Quest __temp = self as Quest
S4S_MasterTimer kmyQuest = __temp as S4S_MasterTimer
;END AUTOCAST
;BEGIN CODE
;Equip First Suit
libs.EquipDevice(PlayerRef, S4S_FelineSuit1Inventory, S4S_FelineSuit1Rendered, S4S_Suit)
;Show Message
S4S_msgEquipSuit1.Show()
;Start Timer (Short)
kmyQuest.ResetTimer(False, False);
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_14
Function Fragment_14()
;BEGIN AUTOCAST TYPE S4S_MasterTimer
Quest __temp = self as Quest
S4S_MasterTimer kmyQuest = __temp as S4S_MasterTimer
;END AUTOCAST
;BEGIN CODE
;Unequip Uninflated Boots
libs.RemoveDevice(PlayerREF, S4S_FelineBootsUninflatedInventory, S4S_FelineBootsUninflatedRendered, S4S_Boots, True, True)
;Show Message
S4S_msgEquipBoots2.Show();
;Equip Inflated Boots
libs.EquipDevice(PlayerREF, S4S_FelineBootsInflatedInventory, S4S_FelineBootsInflatedRendered, S4S_BootsFull, True);
;Start Timer (Long)
kmyQuest.ResetTimer(True, False);
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_20
Function Fragment_20()
;BEGIN CODE
;WARNING: Unable to load fragment source from function Fragment_20 in script QF_S4S_Master_020048E3
;Source NOT loaded
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_16
Function Fragment_16()
;BEGIN AUTOCAST TYPE S4S_MasterTimer
Quest __temp = self as Quest
S4S_MasterTimer kmyQuest = __temp as S4S_MasterTimer
;END AUTOCAST
;BEGIN CODE
;Unequip First Mask
libs.RemoveDevice(PlayerREF, S4S_FelineMask1Inventory, S4S_FelineMask1Rendered, S4S_Mask, True, True)
;Show Message
S4S_msgEquipMask2.Show();
;Equip Second Mask
libs.EquipDevice(PlayerREF, S4S_FelineMask2Inventory, S4S_FelineMask2Rendered, S4S_MaskFull, True);
;Start Timer (Short)
kmyQuest.ResetTimer(False, False);
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_17
Function Fragment_17()
;BEGIN AUTOCAST TYPE S4S_MasterTimer
Quest __temp = self as Quest
S4S_MasterTimer kmyQuest = __temp as S4S_MasterTimer
;END AUTOCAST
;BEGIN CODE
S4S_msgEquipFinal.Show();
kmyQuest.resetTimer(False, True);
S4S_NewLife.Start();
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_7
Function Fragment_7()
;BEGIN AUTOCAST TYPE S4S_MasterTimer
Quest __temp = self as Quest
S4S_MasterTimer kmyQuest = __temp as S4S_MasterTimer
;END AUTOCAST
;BEGIN CODE
;Unequip Uninflated Collar
libs.RemoveDevice(PlayerREF, S4S_FelineCollarUninflatedInventory, S4S_FelineCollarUninflatedRendered, S4S_Collar, True, True)
;Show Message
S4S_msgEquipCollarInflated.Show();
;Equip Inflated Collar
libs.EquipDevice(PlayerREF, S4S_FelineCollarInflatedInventory, S4S_FelineCollarInflatedRendered, S4S_CollarFull, True);
;Start Timer (Long)
kmyQuest.ResetTimer(True, False);
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_9
Function Fragment_9()
;BEGIN AUTOCAST TYPE S4S_MasterTimer
Quest __temp = self as Quest
S4S_MasterTimer kmyQuest = __temp as S4S_MasterTimer
;END AUTOCAST
;BEGIN CODE
;Unequip First Suit
libs.RemoveDevice(PlayerREF, S4S_FelineSuit1Inventory, S4S_FelineSuit1Rendered, S4S_Suit, True, True)
;Show Message
S4S_msgEquipSuit2.Show();
;Equip Second Suit
libs.EquipDevice(PlayerREF, S4S_FelineSuit2Inventory, S4S_FelineSuit2Rendered, S4S_SuitMore, True);
;Start Timer (Short)
kmyQuest.ResetTimer(False, False);
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_12
Function Fragment_12()
;BEGIN AUTOCAST TYPE S4S_MasterTimer
Quest __temp = self as Quest
S4S_MasterTimer kmyQuest = __temp as S4S_MasterTimer
;END AUTOCAST
;BEGIN CODE
;Unequip Uninflated Gloves
libs.RemoveDevice(PlayerREF, S4S_FelineGlovesUninflatedInventory, S4S_FelineGlovesUninflatedRendered, S4S_Gloves, True, True)
;Show Message
S4S_msgEquipGloves2.Show();
;Equip Inflated Gloves
libs.EquipDevice(PlayerREF, S4S_FelineGlovesInflatedInventory, S4S_FelineGlovesInflatedRendered, S4S_GlovesFull, True);
;Start Timer (Long)
kmyQuest.ResetTimer(True, False);
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_15
Function Fragment_15()
;BEGIN AUTOCAST TYPE S4S_MasterTimer
Quest __temp = self as Quest
S4S_MasterTimer kmyQuest = __temp as S4S_MasterTimer
;END AUTOCAST
;BEGIN CODE
;Equip First Mask
libs.EquipDevice(PlayerRef, S4S_FelineMask1Inventory, S4S_FelineMask1Rendered, S4S_Mask)
;Show Message
S4S_msgEquipMask1.Show()
;Start Timer (Short)
kmyQuest.ResetTimer(False, False);
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_11
Function Fragment_11()
;BEGIN AUTOCAST TYPE S4S_MasterTimer
Quest __temp = self as Quest
S4S_MasterTimer kmyQuest = __temp as S4S_MasterTimer
;END AUTOCAST
;BEGIN CODE
;Equip Uninflated Gloves
libs.EquipDevice(PlayerRef, S4S_FelineGlovesUninflatedInventory, S4S_FelineGlovesUninflatedRendered, S4S_Gloves)
;Show Message
S4S_msgEquipGloves1.Show()
;Start Timer (Short)
kmyQuest.ResetTimer(False, False);
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_10
Function Fragment_10()
;BEGIN AUTOCAST TYPE S4S_MasterTimer
Quest __temp = self as Quest
S4S_MasterTimer kmyQuest = __temp as S4S_MasterTimer
;END AUTOCAST
;BEGIN CODE
;Unequip Second Suit
libs.RemoveDevice(PlayerREF, S4S_FelineSuit2Inventory, S4S_FelineSuit2Rendered, S4S_SuitMore, True, True)
;Show Message
S4S_msgEquipSuit3.Show();
;Equip Third Suit
libs.EquipDevice(PlayerREF, S4S_FelineSuit3Inventory, S4S_FelineSuit3Rendered, S4S_SuitFull, True);
;Start Timer (Long)
kmyQuest.ResetTimer(True, False);
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
