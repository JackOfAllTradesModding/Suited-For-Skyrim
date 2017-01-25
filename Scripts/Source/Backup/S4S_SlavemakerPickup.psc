Scriptname S4S_SlavemakerPickup extends ReferenceAlias  
{Handles player pickup of staff}

Quest Property S4S_Dummy  Auto  

Event OnContainerChanged(ObjectReference akNewContainer, ObjectReference akOldContainer)
  if akNewContainer == Game.GetPlayer() && S4S_Dummy.GetStage() < 60
 	S4S_Dummy.SetStage(60);
  endIf
endEvent