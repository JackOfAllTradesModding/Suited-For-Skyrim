;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname S4S_Frag_QuickRelease Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
libs.RemoveDevice(PlayerREF, S4S_FelineCollarInflatedInventory, S4S_FelineCollarInflatedRendered, S4S_CollarFull, True, True)
libs.RemoveDevice(PlayerREF, S4S_FelineGlovesInflatedInventory, S4S_FelineGlovesInflatedRendered, S4S_GlovesFull, True, True)
libs.RemoveDevice(PlayerREF, S4S_FelineBootsInflatedInventory, S4S_FelineBootsInflatedRendered, S4S_BootsFull, True, True)
libs.RemoveDevice(PlayerREF, S4S_FelineSuit3Inventory, S4S_FelineSuit3Rendered, S4S_SuitFull, True, True)
;Everything Removed
;Advance QuestStage
S4S_LadyInRubber.SetStage(15);
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Armor Property S4S_FelineCollarInflatedInventory Auto;
Armor Property S4S_FelineCollarInflatedRendered Auto;

Armor Property S4S_FelineBootsInflatedInventory Auto;
Armor Property S4S_FelineBootsInflatedRendered Auto;

Armor Property S4S_FelineGlovesInflatedInventory Auto;
Armor Property S4S_FelineGlovesInflatedRendered Auto;

Armor Property S4S_FelineMask2Inventory Auto;
Armor Property S4S_FelineMask2Rendered Auto;

Armor Property S4S_FelineSuit3Inventory Auto;
Armor Property S4S_FelineSuit3Rendered Auto;

zadlibs Property libs  Auto  

Actor Property PlayerRef  Auto 

Keyword Property S4S_BootsFull  Auto  
Keyword Property S4S_CollarFull  Auto  
Keyword Property S4S_GlovesFull  Auto  
Keyword Property S4S_MaskFull  Auto 
Keyword Property S4S_SuitFull  Auto  
Quest Property S4S_LadyInRubber  Auto  
