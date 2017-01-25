Scriptname S4S_SigilStoneActivatorScript extends ObjectReference  
{Teleports player to Dollmaker's Manors}

ObjectReference Property S4S_TPManorMarker  Auto  

Event OnActivate(ObjectReference akActionRef)

akActionRef.MoveTo(S4S_TPManorMarker)

EndEvent