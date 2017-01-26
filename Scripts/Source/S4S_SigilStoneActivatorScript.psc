Scriptname S4S_SigilStoneActivatorScript extends ObjectReference  
{Teleports player to Dollmaker's Manors}

ObjectReference Property S4S_TPManorMarker  Auto  

Event OnActivate(ObjectReference akActionRef)

S4S_msgTeleport1.show();;NOTE: Might move to appear when you walk into the shack
akActionRef.MoveTo(S4S_TPManorMarker)

EndEvent
Message Property S4S_msgTeleport1 Auto  
