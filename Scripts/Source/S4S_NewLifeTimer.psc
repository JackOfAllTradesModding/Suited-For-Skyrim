Scriptname S4S_NewLifeTimer extends Quest  
{counts 7 days after becoming fully suited}

Int Property TimeLimit = 168 Auto; 7*24=168
Int Property CurrentTime = 0 Auto;

Quest Property S4S_NewLife Auto;

Event OnGameReload()
	RegisterForSingleUpdateGameTime(1.0)
EndEvent

Event OnUpdateGameTime()

	CurrentTime += 1;
	If(CurrentTime >= TimeLimit)
		;SetStage to stagedone (will bypass 10 acts)
	Else

	EndIf
	
EndEvent
