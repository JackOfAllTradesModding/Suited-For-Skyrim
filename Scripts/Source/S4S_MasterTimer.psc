Scriptname S4S_MasterTimer extends Quest  
{handles increases in suit and that}

Int Property LongTime = 30 Auto;
Int Property ShortTime = 18 Auto;
Int Property CurrentTime = 0 Auto;
Bool Property isLongTime = False Auto;
Bool Property isShortTimme = True Auto;
Bool Property SuitComplete = False Auto;

Quest Property S4S_Master Auto;

Event OnGameReload()

	If (!SuitComplete)
		RegisterForSingleUpdateGameTime(1.0);
	EndIf

EndEvent

Event OnUpdateGameTime()

	CurrentTime += 1; Advance Timer
	
	If(isLongTime && CurrentTime >= LongTime) || (isShortTimme && CurrentTime >= ShortTime)
		;Update
		S4S_Master.SetStage(S4S_Master.GetStage()+10);
	Else
		RegisterForSingleUpdateGameTime(1.0);
	EndIf
	
EndEvent 

Function ResetTimer(bool Long, bool Done)

	
	If (!Done)
		CurrentTime = 0;
		isLongTime = Long;
		isShortTimme = !Long; Sets both to the proper value
		RegisterForSingleUpdateGameTime(1.0)
	Else
		SuitComplete = True;
	EndIf

EndFunction 