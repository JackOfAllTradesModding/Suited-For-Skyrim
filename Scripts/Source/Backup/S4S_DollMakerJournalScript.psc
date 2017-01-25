Scriptname S4S_DollMakerJournalScript extends ObjectReference  
{Runs when this book is collected. Was originally much more useful}

Quest Property S4S_Dummy Auto

Event OnContainerChanged(ObjectReference akNewContainer, ObjectReference akOldContainer)
  if akNewContainer == Game.GetPlayer() && S4S_Dummy.GetStage() < 30
 	S4S_Dummy.SetStage(30);
  endIf
endEvent

;Event OnRead()
;	If S4S_Dummy.GetStage() == 25 || S4S_Dummy.GetStage() == 20
;		;GoToState("Read");
;		S4S_Dummy.SetStage(30);
;	EndIf
;EndEvent
;Original plan didn't fucking work because papyrus is a load of steaming bullshit no matter what bethesda piles on it in the remastered edition eat a dick
;wow that got ranty, I was a little drunk when I fixed this code but I'm gonna leave it for whoever reads all of my source files. Send me a PM, I'm severely lonely and also apparently dealing with a mild alcohol problem.