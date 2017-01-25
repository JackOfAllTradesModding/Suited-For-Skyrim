ScriptName S4S_FelineCollarInflated Extends zadCollarScript
;zadLibs Property libs Auto
Message Property S4S_KeyMsg Auto;
Message Property S4S_NoKeyMsg Auto;

Function OnEquippedPre(Actor akActor, bool silent=false)
	;;FIXME RELEASE: Defaul silent to true
	if !silent
		libs.NotifyActor(GetMessageName(akActor)+" is equipping the inflated feline collar", akActor, true)
	EndIf

EndFunction

Int Function OnEquippedFilter(actor akActor, bool silent=false)
	
	;;FIXME RELEASE: if not player return 2 
	Return 0;
	
EndFunction

;Function OnEquippedPost(actor akActor)

;Function OnRemoveDevice(actor akActor)

;Function DeviceMenu(Int msgChoice = 0)
;;FIXME FUTURE: Overhaul entire device menu

Function DeviceMenuExt(Int msgChoice)

	;FOR ANY ADDITIONAL OPTIONS IN INTERACTION MENU

EndFunction

;Function DeviceMenuEquip()
;;For equipping from device menu, leaving alone for now
;EndFunction

Function DeviceMEnuRemoveWithKey()
	S4S_KeyMsg.Show();
EndFunction

Function DeviceMEnuRemoveWithoutKey()
	S4S_NoKeyMsg.Show();
EndFunction
