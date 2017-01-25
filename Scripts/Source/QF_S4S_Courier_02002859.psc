;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 15
Scriptname QF_S4S_Courier_02002859 Extends Quest Hidden

;BEGIN ALIAS PROPERTY LocationCenterMarker
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_LocationCenterMarker Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Location
;ALIAS PROPERTY TYPE LocationAlias
LocationAlias Property Alias_Location Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY CourierMarker
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_CourierMarker Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY DeliveryBoy
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_DeliveryBoy Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_14
Function Fragment_14()
;BEGIN CODE
;Moves the delivery boy close to the player and gets that forcegreet ready
Alias_DeliveryBoy.getReference().moveto(Alias_LocationCenterMarker.getReference())
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_11
Function Fragment_11()
;BEGIN AUTOCAST TYPE S4S_IntroScript
Quest __temp = self as Quest
S4S_IntroScript kmyQuest = __temp as S4S_IntroScript
;END AUTOCAST
;BEGIN CODE
;Player refused to speak with him. Wait two days and send him after the player again.
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
