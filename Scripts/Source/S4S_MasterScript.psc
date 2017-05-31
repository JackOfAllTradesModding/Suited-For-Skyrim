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

	;collar stage 2
	If Stage == 10
		InflateCollar();
	
	;suit stage 1
	ElseIf Stage == 20
		EquipSuit(Stage);
	
	;suit stage 2
	ElseIf Stage == 30
		EquipSuit(Stage);
	
	;suit stage 3
	ElseIf Stage == 40
		EquipSuit(Stage);
	
	;suit stage 4
	ElseIf Stage == 50
		EquipSuit(Stage);
	
	;suit stage 5
	ElseIf Stage == 60
		EquipSuit(Stage);
	
	;suit stage 6
	ElseIf Stage == 70
		EquipSuit(Stage);
	
	;suit stage 7
	ElseIf Stage == 80
		EquipSuit(Stage);
	
	;suit stage 8
	ElseIf Stage == 90
		EquipSuit(Stage);
	
	;suit stage 9 - final
	ElseIf Stage == 100
		EquipSuit(Stage);
	
	;gloves stage 1
	ElseIf Stage == 110
		EquipGloves(Stage)
	
	;gloves stage 2
	ElseIf Stage == 120
		EquipGloves(Stage);
	
	;boots stage 1
	ElseIf Stage == 130
		EquipBoots(Stage);
	
	;boots stage 2
	ElseIf Stage == 140
		EquipBoots(Stage);
	
	;mask stage 1
	ElseIf Stage == 150
		EquipMask(Stage);
		
	;mask stage 2
	ElseIf Stage == 160
		EquipMask(Stage);
	
	;mask stage 3
	ElseIf Stage == 170
		EquipMask(Stage);
	
	;final
	ElseIf Stage == 180
		EquipFinal();
	
	Else
		;;FIXME: Error
	EndIf

EndFunction

;Inflate the collar
Function InflateCollar() ;DONE
	;Unequip Uninflated Collar
	libs.RemoveQuestDevice(PlayerREF, S4S_FelineCollarUninflatedInventory, S4S_FelineCollarUninflatedRendered, zad_DeviousCollar, S4S_Collar, True)
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
		;Equip First Suit stage
			;Cheating here, stage 1 and 2 are actually new collars so you can still equip other devices
			
			;Remove inflated collar
			libs.RemoveQuestDevice(PlayerREF, S4S_FelineCollarInflatedInventory, S4S_FelineCollarInflatedRendered, zad_DeviousCollar, S4S_Collar, True)
			;Show Message
			S4S_msgEquipSuit1.Show()
			;Equip First suit piece
			libs.EquipDevice(PlayerRef, S4S_FelineSuit1Inventory, S4S_FelineSuit1Rendered, zad_DeviousCollar)
			;ResetTimer
			Timer.ResetTimer(False, False);
	
	ElseIf Stage == 30
		;Second suit piece (Secretly a collar)
			;Remove
			libs.RemoveQuestDevice(PlayerREF, S4S_FelineSuit1Inventory, S4S_FelineSuit1Rendered, zad_DeviousCollar, S4S_Collar, True)
			;Message
			S4S_msgEquipSuit2.Show()
			;Equip
			libs.EquipDevice(PlayerREF, S4S_FelineSuit2Inventory, S4S_FelineSuit2Rendered, zad_DeviousCollar)
			;Timer
			Timer.ResetTimer(False, False);
	
	ElseIf Stage == 40 ;Starts conflicting with bra and body armor
		;Third Suit piece, First actual suit piece, and reequip the collar
		;Check for a bra
		If libs.WearingConflictingDevice(PlayerREF, S4S_FelineSuit3Rendered, zad_DeviousBra)
		;If yes try to remove
			Armor inv = libs.GetWornDevice(PlayerREF, zad_DeviousBra)
			If inv != None
				Armor ren = libs.getRenderedDevice(inv)
				libs.RemoveDevice(PlayerREF, inv, ren, zad_DeviousBra, skipevents = True)
				;Check for it again, if it's still there it's a quest item and the timer loops.
				If libs.WearingConflictingDevice(PlayerREF, S4S_FelineSuit3Rendered, zad_DeviousBra)
					Timer.LoopTimer(Stage)
					Return
				Else
					;Show Override message
					S4S_msgEquipSuit1Override.Show();
				EndIf
			EndIf
		EndIf
		
		;Check for a suit
		If libs.WearingConflictingDevice(PlayerREF, S4S_FelineSuit3Rendered, zad_DeviousSuit)
		;If yes try to remove
			Armor inv = libs.GetWornDevice(PlayerREF, zad_DeviousSuit)
			If inv != None
				Armor ren = libs.getRenderedDevice(inv)
				libs.RemoveDevice(PlayerREF, inv, ren, zad_DeviousSuit, skipevents = True)
				;Check for it again, if it's still there it's a quest item and the timer loops.
				If libs.WearingConflictingDevice(PlayerREF, S4S_FelineSuit3Rendered, zad_DeviousSuit)
					Timer.LoopTimer(Stage)
					Return
				Else
					;Show Override message
					S4S_msgEquipSuit2Override.Show();
				EndIf
			EndIf
		EndIf
		
		;If no conflict (or we dealt with it)
		;Unequip Suit2
		libs.RemoveQuestDevice(PlayerREF, S4S_FelineSuit2Inventory, S4S_FelineSuit2Rendered, zad_DeviousCollar, S4S_Suit, True)
		;Reequip inflated collar
		libs.EquipDevice(PlayerREF, S4S_FelineCollarInflatedInventory, S4S_FelineCollarInflatedRendered, zad_DeviousCollar)
		;Message
		S4S_msgEquipSuit3.Show();
		;Remove body armor ?
		;Equip Suit3
		libs.EquipDevice(PlayerREF, S4S_FelineSuit3Inventory, S4S_FelineSuit3Rendered, zad_DeviousSuit)
		;Timer
		Timer.ResetTimer(False, False)
	
	ElseIf Stage == 50 ;starts conflicting with belts/harnesses.
		;Sixth suit piece, more complicated, since it's now belt/harness too
		;Check for a Belt
		If libs.WearingConflictingDevice(PlayerREF, S4S_FelineSuit4Rendered, zad_DeviousBelt)
		;If yes try to remove
			Armor inv = libs.GetWornDevice(PlayerREF, zad_DeviousBelt)
			If inv != None
				Armor ren = libs.getRenderedDevice(inv)
				libs.RemoveDevice(PlayerREF, inv, ren, zad_DeviousBelt, skipevents = True)
				;Check for it again, if it's still there it's a quest item and the timer loops.
				If libs.WearingConflictingDevice(PlayerREF, S4S_FelineSuit4Rendered, zad_DeviousBelt)
					Timer.LoopTimer(Stage)
					Return
				Else
					;Show Override message
					S4S_msgEquipSuit3Override.Show();
				EndIf
			EndIf
		EndIf
		
		;Check for a Harness
		If libs.WearingConflictingDevice(PlayerREF, S4S_FelineSuit4Rendered, zad_DeviousHarness)
		;If yes try to remove
			Armor inv = libs.GetWornDevice(PlayerREF, zad_DeviousHarness)
			If inv != None
				Armor ren = libs.getRenderedDevice(inv)
				libs.RemoveDevice(PlayerREF, inv, ren, zad_DeviousHarness, skipevents = True)
				;Check for it again, if it's still there it's a quest item and the timer loops.
				If libs.WearingConflictingDevice(PlayerREF, S4S_FelineSuit4Rendered, zad_DeviousHarness)
					Timer.LoopTimer(Stage)
					Return
				Else
					;Show Override message
					S4S_msgEquipSuit3Override.Show();
				EndIf
			EndIf
		EndIf
		
		;If no conflict (or we dealt with it)
		;Unequip Suit3
		libs.RemoveQuestDevice(PlayerREF, S4S_FelineSuit3Inventory, S4S_FelineSuit3Rendered, zad_DeviousSuit, S4S_Suit, True)
		;Message
		S4S_msgEquipSuit4.Show();
		;Equip Suit4
		libs.EquipDevice(PlayerREF, S4S_FelineSuit4Inventory, S4S_FelineSuit4Rendered, zad_DeviousSuit)
		;Timer
		Timer.ResetTimer(False, False)
		
	ElseIf Stage == 60
		;Fifth Suit Piece
			;Remove Suit4
			libs.RemoveQuestDevice(PlayerREF, S4S_FelineSuit4Inventory, S4S_FelineSuit4Rendered, zad_DeviousSuit, S4S_SuitMore, True)
			;Message
			S4S_msgEquipSuit5.Show()
			;Equip Suit5
			libs.EquipDevice(PlayerREF, S4S_FelineSuit5Inventory, S4S_FelineSuit5Rendered, zad_DeviousSuit)
			;Timer
			Timer.ResetTimer(False, False)
	ElseIf Stage == 70
		;Seventh Suit Piece
			;Remove Suit5
			libs.RemoveQuestDevice(PlayerREF, S4S_FelineSuit5Inventory, S4S_FelineSuit5Rendered, zad_DeviousSuit, S4S_SuitMore, True)
			;Message
			S4S_msgEquipSuit6.Show()
			;Equip Suit 6
			libs.EquipDevice(PlayerREF, S4S_FelineSuit6Inventory, S4S_FelineSuit6Rendered, zad_DeviousSuit)
			;Timer
			Timer.ResetTimer(False, False)
	ElseIf Stage == 80
		;Seventh Suit Piece
			;Remove Suit6
			libs.RemoveQuestDevice(PlayerREF, S4S_FelineSuit6Inventory, S4S_FelineSuit6Rendered, zad_DeviousSuit, S4S_SuitMore, True)
			;Message
			S4S_msgEquipSuit7.Show()
			;Equip Suit 7
			libs.EquipDevice(PlayerREF, S4S_FelineSuit7Inventory, S4S_FelineSuit7Rendered, zad_DeviousSuit)
			;Timer
			Timer.ResetTimer(False, False)
	ElseIf Stage == 90
		;Eighth Suit Piece
			;Remove Suit 7
			;;FIXME: Commented code
			libs.RemoveQuestDevice(PlayerREF, S4S_FelineSuit7Inventory, S4S_FelineSuit7Rendered, zad_DeviousSuit, S4S_SuitMore, True)
			;Message
			S4S_msgEquipSuit8.Show()
			;Equip suit 8
			libs.EquipDevice(PlayerREF, S4S_FelineSuit8Inventory, S4S_FelineSuit8Rendered, zad_DeviousSuit)
			;Timer
			Timer.ResetTimer(True, False)
			
	ElseIf Stage == 100
		;Last Suit Piece
			;Remove Suit 8
			;;FIXME: Commented code
			libs.RemoveQuestDevice(PlayerREF, S4S_FelineSuit8Inventory, S4S_FelineSuit8Rendered, zad_DeviousSuit, S4S_SuitMore, True)
			;Message
			S4S_msgEquipSuitFull.Show()
			S4S_msgEquipSuitFullb.Show()
			;Equip suit 9
			libs.EquipDevice(PlayerREF, S4S_FelineSuit9Inventory, S4S_FelineSuit9Rendered, zad_DeviousSuit)
			;Timer
			Timer.ResetTimer(True, False)
	Else
		;;FIXME: Error
	EndIf
		
EndFunction


;Equip or inflate the gloves
Function EquipGloves(int stage = 0)
	If Stage == 110
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
		
	ElseIf Stage == 120
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
	If Stage == 130
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
	ElseIf Stage == 140
		libs.RemoveQuestDevice(PlayerREF, S4S_FelineBootsUninflatedInventory, S4S_FelineBootsUninflatedRendered, zad_DeviousBoots, S4S_Boots, True)
		S4S_msgEquipBoots2.Show()
		;Utility.Wait(0.1);
		S4S_msgEquipBoots2b.Show()
		libs.EquipDevice(PlayerREF, S4S_FelineBootsInflatedInventory, S4S_FelineBootsInflatedRendered, zad_DeviousBoots)
		Timer.ResetTimer(False, False)
		Return;
	Else 
		;;Debug
	EndIf
EndFunction


;Equip or Inflate the Mask
Function EquipMask(int stage = 0)
	If Stage == 150 ;Fake Collar again because if every machine is like, 6 simple ones and maybe a computer I shouldn't need more than a few workarounds per mod
		libs.RemoveQuestDevice(PlayerREF, S4S_FelineCollarInflatedInventory, S4S_FelineCollarInflatedRendered, zad_DeviousCollar, S4S_Collar)
		S4S_msgEquipMask1.Show();
		libs.EquipDevice(PlayerREF, S4S_FelineMask1Inventory, S4S_FelineMask1Rendered, zad_DeviousCollar)
		Timer.ResetTimer(False,False);
	ElseIf Stage == 160
		;Check for gag/hood
		If libs.WearingConflictingDevice(PlayerREF, S4S_FelineMask2Rendered, zad_DeviousGag)
			Armor inv = libs.GetWornDevice(PlayerREF, zad_DeviousGag)
			Armor ren = libs.GetRenderedDevice(inv)
			libs.RemoveDevice(PlayerREF, inv, ren, zad_DeviousGag, skipevents=true);
			If libs.WearingConflictingDevice(PlayerREF, S4S_FelineMask2Rendered, zad_DeviousGag)
				;;Debug
				Timer.LoopTimer(Stage)
				Return;
			EndIf
			S4S_msgEquipMask1Override.Show()
		EndIf	
		;Hood
		If libs.WearingConflictingDevice(PlayerREF, S4S_FelineMask1Rendered, zad_DeviousHood)
			Armor inv = libs.GetWornDevice(PlayerREF, zad_DeviousHood)
			Armor ren = libs.GetRenderedDevice(inv)
			libs.RemoveDevice(PlayerREF, inv, ren, zad_DeviousHood, skipevents=true);
			If libs.WearingConflictingDevice(PlayerREF, S4S_FelineMask1Rendered, zad_DeviousHood)
				;;Debug
				Timer.LoopTimer(Stage)
				Return;
			EndIf
			S4S_msgEquipMask1Override.Show()
		EndIf 
		
		libs.RemoveQuestDevice(PlayerREF, S4S_FelineMask1Inventory, S4S_FelineMask1Rendered, zad_DeviousCollar, S4S_Collar)
		libs.EquipDevice(PlayerREF, S4S_FelineCollarInflatedInventory, S4S_FelineCollarInflatedRendered, zad_DeviousCollar)
		libs.EquipDevice(PlayerREF, S4S_FelineMask2Inventory, S4S_FelineMask2Rendered, zad_DeviousGag)
		S4S_msgEquipMask2.Show()
		Timer.ResetTimer(False, False)
		Utility.Wait(0.1);
		
		
	ElseIf Stage == 170 ;;FIXME: This whole stage needs reworking
		;check for blindfold
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
			EndIf
		EndIf
		libs.RemoveQuestDevice(PlayerREF, S4S_FelineMask2Inventory, S4S_FelineMask2Rendered, zad_DeviousGag, S4S_Mask, True)
		
			libs.EquipDevice(PlayerREF, S4S_FelineMask3Inventory, S4S_FelineMask3Rendered, zad_DeviousBlindFold)
			S4S_msgEquipMask3.Show()
			Utility.Wait(0.1);
			S4S_msgEquipMask3b.Show();
			Timer.ResetTimer(False, False)

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
Armor Property S4S_FelineSuit4Inventory Auto;
Armor Property S4S_FelineSuit4Rendered Auto;
Armor Property S4S_FelineSuit5Inventory Auto;
Armor Property S4S_FelineSuit5Rendered Auto;
Armor Property S4S_FelineSuit6Inventory Auto;
Armor Property S4S_FelineSuit6Rendered Auto;
Armor Property S4S_FelineSuit7Inventory Auto;
Armor Property S4S_FelineSuit7Rendered Auto;
Armor Property S4S_FelineSuit8Inventory Auto;
Armor Property S4S_FelineSuit8Rendered Auto;
Armor Property S4S_FelineSuit9Inventory Auto;
Armor Property S4S_FelineSuit9Rendered Auto;

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
Armor Property S4S_FelineMask3Inventory Auto;
Armor Property S4S_FelineMask3Rendered Auto;

;messages about equipping each of the pieces
Message Property S4S_msgEquipCollarInflated  Auto  
Message Property S4S_msgEquipSuit1  Auto  
Message Property S4S_msgEquipSuit2  Auto  
Message Property S4S_msgEquipSuit3  Auto 
Message Property S4S_msgEquipSuit3b  Auto   
Message Property S4S_msgEquipSuit4  Auto   
Message Property S4S_msgEquipSuit5  Auto   
Message Property S4S_msgEquipSuit6  Auto   
Message Property S4S_msgEquipSuit7  Auto   
Message Property S4S_msgEquipSuit8  Auto   
Message Property S4S_msgEquipSuitFull  Auto    
Message Property S4S_msgEquipSuitFullb  Auto   
Message Property S4S_msgEquipBoots1  Auto  
Message Property S4S_msgEquipBoots2  Auto 
Message Property S4S_msgEquipBoots2b Auto 
Message Property S4S_msgEquipGloves1  Auto  
Message Property S4S_msgEquipGloves2  Auto  
Message Property S4S_msgEquipMask1  Auto  
Message Property S4S_msgEquipMask2 Auto
Message Property S4S_msgEquipMask2b Auto
Message Property S4S_msgEquipMask3  Auto
Message Property S4S_msgEquipMask3b  Auto  
Message Property S4S_msgEquipFinal  Auto  
Message Property S4S_msgEquipFinalb  Auto  

;Messages to equip pieces while another device is in the way
Message Property S4S_msgEquipSuit1Override Auto ;Override Bra - stage 3
Message Property S4S_msgEquipSuit2Override Auto ;Override Suit - stage 3
Message Property S4S_msgEquipSuit3Override Auto ;Override Belt/Harness - stage 4
Message Property S4S_msgEquipBootsOverride Auto 
Message Property S4S_msgEquipGlovesOverride Auto
Message Property S4S_msgEquipMask1Override Auto ;Gag
Message Property S4S_msgEquipMask2Override Auto ;Blindfold
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
Keyword Property zad_DeviousHarness Auto
Keyword Property zad_DeviousGloves Auto
Keyword Property zad_DeviousBondageMittens Auto
Keyword Property zad_DeviousBoots Auto
Keyword Property zad_DeviousGag Auto
Keyword Property zad_DeviousHood Auto
Keyword Property zad_DeviousBlindFold Auto 
Keyword Property zad_DeviousArmbinder Auto 