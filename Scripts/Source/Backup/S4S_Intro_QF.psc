;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 12
Scriptname S4S_Intro_QF Extends Quest Hidden

;BEGIN ALIAS PROPERTY DeliveryBoy
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_DeliveryBoy Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY PlayerAlias
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_PlayerAlias Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY MralkiInnMarker
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_MralkiInnMarker Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Mralki
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Mralki Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY CollarPlaceholder
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_CollarPlaceholder Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY S4S_InnMarkerAlias
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_S4S_InnMarkerAlias Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_5
Function Fragment_5()
;BEGIN CODE
Game.GetPlayer().Moveto(InnMarker.GetReference()); move the player to the inn
Alias_Mralki.GetReference().Moveto(Alias_MralkiInnMarker.GetReference());
Game.FadeOutGame(False, true, 1.0, 2.0);
Game.GetPlayer().EquipItem(Alias_CollarPlaceholder.GetReference(), true, true);
Game.GetPlayer().PlayIdle(WakeUp)
utility.wait(1.5); in case this keeps running while we fade back in
SetStage(201);
;
;Moved to Mralki Dialogue and Extra Stage to flow better
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
;Moves the delivery boy close to the player and gets that forcegreet ready
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_4
Function Fragment_4()
;BEGIN CODE
S4S_KnockoutNoGo.Show(); show messagebox
Utility.wait(0.1); Pauses script while messagebox is open
Game.GetPlayer().RemoveItem(Gold, 5000); Remove our new friends pay
Game.FadeOutGame(true, true, 1.0, 0.5) ;Wait half a second, then fade to black over one second
SetStage(200); end stage for this quest, starts S4S_Dummy
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE
S4S_KnockoutFooled.Show(); show messagebox
Utility.wait(0.1); Pauses script while messagebox is open
Game.GetPlayer().RemoveItem(Gold, 5000); Remove our new friends pay
Game.FadeOutGame(true, true, 1.0, 0.5) ;Wait half a second, then fade to black over one second
SetStage(200); end stage for this quest, starts S4S_Dummy
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_10
Function Fragment_10()
;BEGIN CODE
stop();
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

MiscObject Property Gold  Auto  

Message Property S4S_KnockoutNoGo  Auto  

Message Property S4S_KnockoutFooled  Auto  

Idle Property WakeUp  Auto  

ReferenceAlias Property InnMarker  Auto  

Quest Property S4S_Master  Auto  

Quest Property S4S_Dummy  Auto  
