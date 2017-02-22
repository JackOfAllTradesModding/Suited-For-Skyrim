Scriptname S4S_DollMakerJournalScript extends ReferenceAlias  
{Runs when this book is collected. Was originally much more useful}

Quest Property S4S_Dummy Auto

Event OnContainerChanged(ObjectReference akNewContainer, ObjectReference akOldContainer)
  if akNewContainer == Game.GetPlayer() && S4S_Dummy.GetStage() < 30
		S4S_Dummy.SetStage(30);
  endIf
endEvent

Event OnRead()
	If S4S_Dummy.GetStage() < 30
		;GoToState("Read");
		S4S_Dummy.SetStage(30);
	EndIf
EndEvent