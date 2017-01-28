ScriptName S4S_FelineSuit2 Extends zadBodyHarnessScript
;zadLibs Property libs Auto
Message Property S4S_KeyMsg Auto;
Message Property S4S_NoKeyMsg Auto;

Function OnEquippedPre(actor akActor, bool silent=false)
	
EndFunction

int Function OnEquippedFilter(actor akActor, bool silent=false)
	;if akActor != libs.PlayerRef || silent
		return 0 ; Proceed.
	;EndIf
    ;    int interaction = zad_GagPreEquipMsg.show()
    ;    if interaction == 0 ; Equip Device
	;    return 0 ; Proceed
	;Else
	;	return 2
	;EndIf
EndFunction

Function DeviceMEnuRemoveWithKey()
	S4S_KeyMsg.Show();
EndFunction

Function DeviceMEnuRemoveWithoutKey()
	S4S_NoKeyMsg.Show();
EndFunction

Function OnEquippedPost(actor akActor)

EndFunction