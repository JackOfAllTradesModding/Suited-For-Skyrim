Scriptname S4S_NewLifeTimer extends Quest  
{counts 7 days after becoming fully suited}

Float Property TimeLimit = 168.0 Auto; 7*24=168
Float Property CurrentTime = 0.0 Auto;
Float Property UpdateStartTime=0.0 Auto;
Float Property UpdateEndTime=0.0 Auto;
GlobalVariable Property GameHour Auto;
Quest Property S4S_NewLife Auto;

Function StartTimer()
	RegisterForSingleUpdateGameTime(1.0)
	UpdateStartTime = Utility.GetCurrentGameTime();
EndFunction

Event OnGameReload()
	RegisterForSingleUpdateGameTime(1.0)
EndEvent

Event OnUpdateGameTime()

	UpdateEndTime = Utility.GetCurrentGameTime();
	Float dif = (UpdateEndTime - UpdateStartTime) * 24;
	if dif <0
		dif += 24.0
	EndIf
	
	CurrentTime += dif;
	If(CurrentTime >= TimeLimit)
		S4S_NewLife.SetStage(1);
	Else
		RegisterForSingleUpdateGameTime(1.0)
	UpdateStartTime = Utility.GetCurrentGameTime();
	EndIf
	
EndEvent