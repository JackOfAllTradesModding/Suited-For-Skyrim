Scriptname S4S_DildoPickup extends ReferenceAlias  
{Advances the quest when picked up}

Actor Property PlayerREF Auto
Quest Property S4S_Dummy Auto

Event OnContainerChanged(ObjectReference newContainer, ObjectReference oldContainer)

	If newContainer == PlayerREF
		S4S_Dummy.SetStage(120)
	Else

	EndIf	

EndEvent