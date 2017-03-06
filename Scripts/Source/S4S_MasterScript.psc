ScriptName S4S_MasterScript Extends Quest
{Handles suit expansions}
;This was originally in quest fragments, but when it was decided that there needed to be more on this (dealing with device conflicts) it was moved to a new script

zadlibs Property libs  Auto  
{DDi Scripts}
Actor Property PlayerREF Auto
{easy access of player}
;Note: Many more properties at the bottom for organizational purposes 
Quest Property S4S_NewLife  Auto  
Quest Property S4S_Dummy Auto
Quest Property S4S_Master Auto
S4S_MasterTimer Property Timer Auto


Function ExpandSuit(int Stage)
;Stage is the stage we are entering, not the stage we are leaving
;Will take stage to determine which expansion point we are at. 
;Figures out what the next piece is, checks to see if there is a conflict (and it is not the uninflated version) and then removes it if possible
;if removal is not possible it will wait (with the help of the timer script) and try again in a little while until it can either expand unhindered or remove the conflicting device
	
	If Stage == 10
		InflateCollar();
	ElseIf Stage == 20
		EquipSuit(Stage);
	ElseIf Stage == 30
		EquipSuit(Stage);
	ElseIf Stage == 40
		EquipSuit(Stage);
	ElseIf Stage == 50
		EquipGloves(Stage)
	ElseIf Stage == 60
		EquipGloves(Stage);
	ElseIf Stage == 70
		EquipBoots(Stage);
	ElseIf Stage == 80
		EquipBoots(Stage);
	ElseIf Stage == 90
		EquipMask(Stage);
	ElseIf Stage == 100
		EquipMask(Stage);
	ElseIf Stage == 110
		EquipFinal();
	Else
		;;FIXME: Error
	EndIf

EndFunction

;Inflate the collar
Function InflateCollar()
	;Unequip Uninflated Collar
	libs.RemoveQuestDevice(PlayerREF, S4S_FelineCollarUninflatedInventory, S4S_FelineCollarUninflatedRendered, zad_DeviousBra, S4S_Collar, True)
	;Show Message
	S4S_msgEquipCollarInflated.Show();
	;Equip Inflated Collar
	libs.EquipDevice(PlayerREF, S4S_FelineCollarInflatedInventory, S4S_FelineCollarInflatedRendered, zad_DeviousCollar);
	;Start Timer (Long)
	Timer.ResetTimer(True, False);
	;;;
EndFunction

;Equip or expand the suit
Function EquipSuit(int stage = 0)
	If Stage == 20 
		;Equip First Suit
		If libs.WearingConflictingDevice(PlayerREF, S4S_FelineSuit1Rendered, zad_DeviousBra)
			Armor inv = libs.GetWornDevice(PlayerREF, zad_DeviousBra);
			Armor ren = libs.GetRenderedDevice(inv);
			libs.RemoveDevice(PlayerRef, inv, ren, zad_DeviousBra, skipevents=true); Should remove it with no pop-up from the device removed
			
			;Extra check, just in case it's a quest item or something.
			If libs.WearingConflictingDevice(PlayerREF, S4S_FelineSuit1Rendered, zad_DeviousBra)
				;Was a quest item, cannot remove
				;;FIXME: Debug log
				Timer.LoopTimer(Stage);
				Return;
			Else
				;Device was removed
				;Show custom message for removing the bra
				S4S_msgEquipSuit1Override.Show()
				;Equip the new item
				libs.EquipDevice(PlayerRef, S4S_FelineSuit1Inventory, S4S_FelineSuit1Rendered, zad_DeviousBra)
				Utility.Wait(0.1)
				Timer.ResetTimer(False, False);
				S4S_msgEquipSuit1.Show() ;probably not both messages
				
			EndIf
		Else
			libs.EquipDevice(PlayerRef, S4S_FelineSuit1Inventory, S4S_FelineSuit1Rendered, zad_DeviousBra)
			Timer.ResetTimer(False, False);
			S4S_msgEquipSuit1.Show()
			
		EndIf
		
	ElseIf Stage == 30
		;Equip Second Suit
		libs.RemoveQuestDevice(PlayerREF, S4S_FelineSuit1Inventory, S4S_FelineSuit1Rendered, zad_DeviousCollar, S4S_Suit, True)
		
		;Check for belt
		If libs.WearingConflictingDevice(PlayerREF, S4S_FelineSuit2Rendered, zad_DeviousBelt)
			Armor inv = libs.GetWornDevice(PlayerREF, zad_DeviousBelt);
			Armor ren = libs.GetRenderedDevice(inv);
			libs.RemoveDevice(PlayerRef, inv, ren, zad_DeviousSuit, skipevents=true); Should remove it with no pop-up from the device removed
			
			;Extra check, just in case it's a quest item or something.
			If libs.WearingConflictingDevice(PlayerREF, S4S_FelineSuit2Rendered, zad_DeviousBelt)
				;Was a quest item, cannot remove
				;;FIXME: Debug log
				Timer.LoopTimer(Stage);
				Return;
			Else
				;Device was removed
				;Show custom message for removing the bra
				S4S_msgEquipSuit2Override.Show()
				;Equip the new item
				libs.EquipDevice(PlayerRef, S4S_FelineSuit2Inventory, S4S_FelineSuit2Rendered, zad_DeviousSuit)
				Utility.Wait(0.1)
				Timer.ResetTimer(False, False);
				S4S_msgEquipSuit2.Show() ;probably not both messages
				
			EndIf
		;Check for suit
		ElseIf libs.WearingConflictingDevice(PlayerREF, S4S_FelineSuit2Rendered, zad_DeviousSuit)
			Armor inv = libs.GetWornDevice(PlayerREF, zad_DeviousSuit);
			Armor ren = libs.GetRenderedDevice(inv);
			libs.RemoveDevice(PlayerRef, inv, ren, zad_DeviousSuit, skipevents=true); Should remove it with no pop-up from the device removed
			
			;Extra check, just in case it's a quest item or something.
			If libs.WearingConflictingDevice(PlayerREF, S4S_FelineSuit2Rendered, zad_DeviousSuit)
				;Was a quest item, cannot remove
				;;FIXME: Debug log
				Timer.LoopTimer(Stage);
				Return;
			Else
				;Device was removed
				;Show custom message for removing the bra
				S4S_msgEquipSuit2Override.Show()
				;Equip the new item
				libs.EquipDevice(PlayerRef, S4S_FelineSuit2Inventory, S4S_FelineSuit2Rendered, zad_DeviousSuit)
				Utility.Wait(0.1)
				Timer.ResetTimer(False, False);
				S4S_msgEquipSuit2.Show() ;probably not both messages
				
			EndIf
		Else
			libs.EquipDevice(PlayerRef, S4S_FelineSuit2Inventory, S4S_FelineSuit2Rendered, zad_DeviousSuit)
			Timer.ResetTimer(False, False);
			S4S_msgEquipSuit2.Show()
			
		EndIf
		
	ElseIf Stage == 40
		;Equip third suit
		libs.RemoveQuestDevice(PlayerREF, S4S_FelineSuit2Inventory, S4S_FelineSuit2Rendered, zad_DeviousSuit, S4S_SuitMore, True)
		;Show Message
		S4S_msgEquipSuit3.Show();
		Utility.Wait(0.1);
		S4S_msgEquipSuit3b.Show();
		;Equip Inflated Collar
		libs.EquipDevice(PlayerREF, S4S_FelineSuit3Inventory, S4S_FelineSuit3Rendered, zad_DeviousSuit);
		;Start Timer (Long)
		Timer.ResetTimer(True, False);
		
	Else
		;;FIXME: ERROR
	EndIf
	;;;
EndFunction

;Equip or inflate the gloves
Function EquipGloves(int stage = 0)
	If Stage == 50
		;Equip Uninflated gloves
		
		;Armbinder check
		Armor inv = libs.getWornDevice(PlayerREF, zad_DeviousArmbinder);
		if (inv != none)
			;Player has an armbinder equipped
			libs.RemoveDevice(PlayerREF, inv, libs.getRenderedDevice(inv), zad_DeviousArmbinder, skipevents = true)
			inv = libs.getWornDevice(PlayerREF, zad_DeviousArmbinder);
			If (inv == none)
				;Armbinder removed
				S4S_msgArmbinderRemove.Show()
			Else
				;;Debug:
				Timer.LoopTimer(Stage)
				Return;
			EndIf
		EndIf
		
		;Glove check
		If libs.WearingConflictingDevice(PlayerREF, S4S_FelineGlovesUninflatedRendered, zad_DeviousGloves)
			inv = libs.getWornDevice(PlayerREF, zad_DeviousGloves);
			Armor ren = libs.getRenderedDevice(inv);
			libs.RemoveDevice(PlayerREF, inv, ren, zad_DeviousGloves, skipevents=true)
			If libs.WearingConflictingDevice(PlayerREF, S4S_FelineBootsUninflatedRendered, zad_Deviousgloves)
				;;DEBUG
				Timer.LoopTimer(Stage)
				Return;
			Else
				;Gloves gone
				S4S_msgEquipGlovesOverride.Show();
				libs.EquipDevice(PlayerREF, S4S_FelineGlovesUninflatedInventory, S4S_FelineGlovesUninflatedRendered, zad_DeviousGloves)
				Timer.ResetTimer(False, False)
				;Other message?
				Utility.Wait(0.1);
				S4S_msgEquipGloves1.Show()
			EndIf
		Else
			libs.EquipDevice(PlayerREF, S4S_FelineGlovesUninflatedInventory, S4S_FelineGlovesUninflatedRendered, zad_DeviousGloves)
			S4S_msgEquipGloves1.Show()
			Timer.ResetTimer(False, False)
		EndIf	
		
	ElseIf Stage == 60
		;Inflate Gloves
		libs.RemoveQuestDevice(PlayerREF, S4S_FelineGlovesUninflatedInventory, S4S_FelineGlovesUninflatedRendered, zad_DeviousGloves, S4S_Gloves, True)
		S4S_msgEquipGloves2.Show()
		libs.EquipDevice(PlayerREF, S4S_FelineGlovesInflatedInventory, S4S_FelineGlovesInflatedRendered, zad_DeviousBondageMittens)
		Timer.ResetTimer(True, False);
	Else
		;;DEBUG
	EndIf
	;;;
EndFunction

;Equip or Inflate the Boots
Function EquipBoots(int stage = 0)
	If Stage == 70
		If libs.WearingConflictingDevice(PlayerREF, S4S_FelineBootsUninflatedRendered, zad_DeviousBoots)
			Armor inv = libs.GetWornDevice(PlayerREF, zad_DeviousBoots)
			Armor ren = libs.GetRenderedDevice(inv)
			libs.RemoveDevice(PlayerREF, inv, ren, zad_DeviousBoots)
			If libs.WearingConflictingDevice(PlayerREF, S4S_FelineBootsUninflatedRendered, zad_DeviousBoots)
				;could not unequip other boots
				Timer.LoopTimer(Stage)
			Else
				;Unequipped conflicting boots
				S4S_msgEquipBootsOverride.Show()
				libs.EquipDevice(PlayerREF, S4S_FelineBootsUninflatedInventory, S4S_FelineBootsUninflatedRendered, zad_DeviousBoots)
				Timer.ResetTimer(False, False)
				Utility.Wait(0.1)
				S4S_msgEquipBoots1.Show()
				Return;
			EndIf
		Else
			libs.EquipDevice(PlayerREF, S4S_FelineBootsUninflatedInventory, S4S_FelineBootsUninflatedRendered, zad_DeviousBoots)
			S4S_msgEquipBoots1.Show()
			Timer.ResetTimer(False, False)
			Return;
		EndIf
	ElseIf Stage == 80
		libs.RemoveQuestDevice(PlayerREF, S4S_FelineBootsUninflatedInventory, S4S_FelineBootsUninflatedRendered, zad_DeviousBoots, S4S_Boots, True)
		S4S_msgEquipBoots2.Show()
		Utility.Wait(0.1);
		S4S_msgEquipBoots2b.Show()
		libs.EquipDevice(PlayerREF, S4S_FelineBootsInflatedInventory, S4S_FelineBootsInflatedRendered, zad_DeviousBoots)
		Timer.ResetTimer(True, False)
		Return;
	Else 
		;;Debug
	EndIf
EndFunction

;Equip or Inflate the Mask
Function EquipMask(int stage = 0)
	If Stage == 90
		;Check for gag/hood
		If libs.WearingConflictingDevice(PlayerREF, S4S_FelineMask1Rendered, zad_DeviousGag)
			Armor inv = libs.GetWornDevice(PlayerREF, zad_DeviousGag)
			Armor ren = libs.GetRenderedDevice(inv)
			libs.RemoveDevice(PlayerREF, inv, ren, zad_DeviousGag, skipevents=true);
			If libs.WearingConflictingDevice(PlayerREF, S4S_FelineMask1Rendered, zad_DeviousGag)
				;;Debug
				Timer.LoopTimer(Stage)
				Return;
			Else
				libs.EquipDevice(PlayerREF, S4S_FelineMask1Inventory, S4S_FelineMask1Rendered, zad_DeviousGag)
				S4S_msgEquipMask1Override.Show()
				Timer.ResetTimer(False, False)
				Utility.Wait(0.1);
				S4S_msgEquipMask1Override.Show()
			EndIf
			
		ElseIf libs.WearingConflictingDevice(PlayerREF, S4S_FelineMask1Rendered, zad_DeviousHood)
			Armor inv = libs.GetWornDevice(PlayerREF, zad_DeviousHood)
			Armor ren = libs.GetRenderedDevice(inv)
			libs.RemoveDevice(PlayerREF, inv, ren, zad_DeviousHood, skipevents=true);
			If libs.WearingConflictingDevice(PlayerREF, S4S_FelineMask1Rendered, zad_DeviousHood)
				;;Debug
				Timer.LoopTimer(Stage)
				Return;
			Else
				libs.EquipDevice(PlayerREF, S4S_FelineMask1Inventory, S4S_FelineMask1Rendered, zad_DeviousGag)
				S4S_msgEquipMask2Override.Show()
				Timer.ResetTimer(False, False)
				Utility.Wait(0.1);
				S4S_msgEquipMask1Override.Show()
			EndIf
			
		Else 
			libs.EquipDevice(PlayerREF, S4S_FelineMask1Inventory, S4S_FelineMask1Rendered, zad_DeviousGag)
			S4S_msgEquipMask1.Show()
			Utility.Wait(0.1);
			S4S_msgEquipMask1b.Show()
			Timer.ResetTimer(False, False)
		EndIf
	ElseIf Stage == 100
		;check for blindfold
		libs.RemoveQuestDevice(PlayerREF, S4S_FelineMask1Inventory, S4S_FelineMask1Rendered, zad_DeviousGag, S4S_Mask, True)
		If libs.WearingConflictingDevice(PlayerREF, S4S_FelineMask2Rendered, zad_DeviousBlindFold)
			Armor inv = libs.GetWornDevice(PlayerREF, zad_DeviousBlindFold)
			Armor ren = libs.GetRenderedDevice(inv);
			libs.RemoveDevice(PlayerREF, inv, ren, zad_DeviousBlindFold, skipevents=true)
			If libs.WearingConflictingDevice(PlayerREF, S4S_FelineMask2Rendered, zad_DeviousBlindFold)
				;;Debug
				Timer.LoopTimer(Stage)
				Return;
			Else
				S4S_msgEquipMask2Override.Show()
				libs.EquipDevice(PlayerREF, S4S_FelineMask2Inventory, S4S_FelineMask2Rendered, zad_DeviousBlindFold)
				Timer.ResetTimer(False, False)
				Utility.Wait(0.1);
				S4S_msgEquipMask2Override.Show()
			EndIf
		Else
			libs.EquipDevice(PlayerREF, S4S_FelineMask2Inventory, S4S_FelineMask2Rendered, zad_DeviousBlindFold)
			S4S_msgEquipMask2.Show()
			Utility.Wait(0.1);
			S4S_msgEquipMask2b.Show();
			Timer.ResetTimer(False, False)
		EndIf
	Else
		;;DEBUG
		Return;
	EndIf
	;S4S_Master was originally going to set the stage one forward but it is unnecesary.
EndFunction

;Show final message, stop Timer, start NewLife Quest
Function EquipFinal()
	;Everything equipped
	S4S_msgEquipFinal.Show();
	Utility.Wait(0.1);
	S4S_msgEquipFinalb.Show();
	Timer.resetTimer(False, True);
	S4S_NewLife.Start();
EndFunction


;Inventory and Rendered devices for all feline suit pieces
Armor Property S4S_FelineCollarUninflatedInventory Auto;
Armor Property S4S_FelineCollarUninflatedRendered Auto;
Armor Property S4S_FelineCollarInflatedInventory Auto;
Armor Property S4S_FelineCollarInflatedRendered Auto;

Armor Property S4S_FelineSuit1Inventory Auto;
Armor Property S4S_FelineSuit1Rendered Auto;
Armor Property S4S_FelineSuit2Inventory Auto;
Armor Property S4S_FelineSuit2Rendered Auto;
Armor Property S4S_FelineSuit3Inventory Auto;
Armor Property S4S_FelineSuit3Rendered Auto;

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

;messages about equipping each of the pieces
Message Property S4S_msgEquipCollarInflated  Auto  
Message Property S4S_msgEquipSuit1  Auto  
Message Property S4S_msgEquipSuit2  Auto  
Message Property S4S_msgEquipSuit3  Auto 
Message Property S4S_msgEquipSuit3b  Auto   
Message Property S4S_msgEquipBoots1  Auto  
Message Property S4S_msgEquipBoots2  Auto 
Message Property S4S_msgEquipBoots2b Auto 
Message Property S4S_msgEquipGloves1  Auto  
Message Property S4S_msgEquipGloves2  Auto  
Message Property S4S_msgEquipMask1  Auto  
Message Property S4S_msgEquipMask1b Auto
Message Property S4S_msgEquipMask2  Auto
Message Property S4S_msgEquipMask2b  Auto  
Message Property S4S_msgEquipFinal  Auto  
Message Property S4S_msgEquipFinalb  Auto  

;Messages to equip pieces while another device is in the way
Message Property S4S_msgEquipSuit1Override Auto
Message Property S4S_msgEquipSuit2Override Auto
Message Property S4S_msgEquipBootsOverride Auto
Message Property S4S_msgEquipGlovesOverride Auto
Message Property S4S_msgEquipMask1Override Auto
Message Property S4S_msgEquipMask2Override Auto
Message Property S4S_msgArmbinderRemove Auto

;Unique keywords on each S4S device, not used in code after update to script
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

;Keywords to check/remove devices
Keyword Property zad_DeviousCollar Auto
Keyword Property zad_DeviousBra Auto
Keyword Property zad_DeviousSuit Auto
Keyword Property zad_DeviousBelt Auto
Keyword Property zad_DeviousGloves Auto
Keyword Property zad_DeviousBondageMittens Auto
Keyword Property zad_DeviousBoots Auto
Keyword Property zad_DeviousGag Auto
Keyword Property zad_DeviousHood Auto
Keyword Property zad_DeviousBlindFold Auto 
Keyword Property zad_DeviousArmbinder Auto 