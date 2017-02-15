Scriptname S4S_Journal2Script extends ReferenceAlias  
{Handles pickup}

Quest Property S4S_Dummy  Auto  

Event OnContainerChanged(ObjectReference akNewContainer, ObjectReference akOldContainer)
  if akNewContainer == Game.GetPlayer() && S4S_Dummy.GetStage() < 90
 	S4S_Dummy.SetStage(90);
  endIf
endEvent