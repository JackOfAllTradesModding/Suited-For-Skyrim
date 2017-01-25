Scriptname S4S_ManorDoor extends ObjectReference  
{I cheated and the door is acually just an activator}

ObjectReference Property S4S_TPShackMarker  Auto  

Event OnActivate(ObjectReference akActionRef)

akActionRef.moveto(S4S_TPShackMarker)

EndEvent