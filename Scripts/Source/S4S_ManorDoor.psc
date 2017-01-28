Scriptname S4S_ManorDoor extends ObjectReference  
{I cheated and the door is acually just an activator}

ObjectReference Property S4S_TPShackMarker  Auto  

Event OnActivate(ObjectReference akActionRef)

	akActionRef.moveto(S4S_TPShackMarker)
	
	If S4S_LadyInRubber.GetStage() == 15
		S4S_LadyInRubber.SetStage(17)
	EndIf

EndEvent

Quest Property S4S_LadyInRubber  Auto  
