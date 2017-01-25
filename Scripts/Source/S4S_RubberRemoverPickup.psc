Scriptname S4S_RubberRemoverPickup extends ReferenceAlias  
{Handles player pickup of rubberremover}

Quest Property S4S_Dummy  Auto  

Event OnContainerChanged(ObjectReference akNewContainer, ObjectReference akOldContainer)
  if akNewContainer == Game.GetPlayer() && S4S_Dummy.GetStage() < 80
 	S4S_Dummy.SetStage(80);
  endIf
endEvent