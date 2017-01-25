ScriptName S4S_FelineMaskGag Extends zadGagScript
;zadLibs Property libs Auto
Message Property S4S_KeyMsg Auto;
Message Property S4S_NoKeyMsg Auto;

Function OnEquippedPre(actor akActor, bool silent=false)
	if !silent
		if akActor == libs.PlayerRef
			zad_GagEquipMsg.Show()
		Else
			libs.NotifyActor("You slip the gag into "+GetMessageName(akActor)+" mouth, and lock it securely in place behind "+GetMessageName(akActor)+" head.", akActor, true)
		EndIf
	EndIf
	Parent.OnEquippedPre(akActor, silent)
EndFunction

int Function OnEquippedFilter(actor akActor, bool silent=false)
	if akActor != libs.PlayerRef || silent
		return 0 ; Proceed.
	EndIf
        int interaction = zad_GagPreEquipMsg.show()
        if interaction == 0 ; Equip Device
		return 0 ; Proceed
	Else
		return 2
	EndIf
EndFunction

Function DeviceMEnuRemoveWithKey()
	S4S_KeyMsg.Show();
EndFunction

Function DeviceMEnuRemoveWithoutKey()
	S4S_NoKeyMsg.Show();
EndFunction


;Function OnRemoveDevice(actor akActor)
;	if !libs.IsAnimating(akActor)
;		akActor.ClearExpressionOverride()
;		ResetPhonemeModifier(akActor)
;	EndIf
;EndFunction

;no reason to fuck with this yet
;Function OnEquippedPost(actor akActor)
;	libs.ApplyGagEffect(akActor)
;EndFunction
