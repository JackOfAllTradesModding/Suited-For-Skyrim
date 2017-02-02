Scriptname S4S_MasterTimer extends Quest  
{handles increases in suit and that}

Float Property LongTime = 30.0 Auto;
Float Property ShortTime = 18.0 Auto;
Float Property CurrentTime = 0.0 Auto;
Bool Property isLongTime = False Auto;
Bool Property isShortTimme = True Auto;
Bool Property SuitComplete = False Auto;
Bool Property UpdateHalted = False Auto;
Int Property Stage = 0 Auto;

GlobalVariable Property GameHour Auto;
Float Property UpdateStartTime Auto;
Float Property UpdateEndTime Auto

Quest Property S4S_Master Auto
S4S_MasterScript Property Master Auto;

Event OnGameReload()

	If (!SuitComplete)
		RegisterForSingleUpdateGameTime(1.0);
	EndIf

EndEvent

Event OnUpdateGameTime()

	If (UpdateHalted)
		UpdateHalted = False
		Master.ExpandSuit(Stage);
		Return;
	EndIf
	
	;Advance Timer
	UpdateEndTime = GameHour.GetValue();
	Float dif = UpdateEndTime - UpdateStartTime
	if dif <0
		dif += 24.0
	EndIf
	
	CurrentTime += dif;
	
	If(isLongTime && CurrentTime >= LongTime) || (isShortTimme && CurrentTime >= ShortTime)
		;Update
		S4S_Master.SetStage(S4S_Master.GetStage()+10);
	Else
		UpdateStartTime = GameHour.GetValue();
		RegisterForSingleUpdateGameTime(1.0);
	EndIf
	
EndEvent 

Function ResetTimer(bool Long, bool Done)
		
	If (!Done)
		CurrentTime = 0;
		UpdateStartTime = GameHour.GetValue();
		isLongTime = Long;
		isShortTimme = !Long; Sets both to the proper value
		RegisterForSingleUpdateGameTime(1.0)
	Else
		SuitComplete = True;
	EndIf

EndFunction 

Function LoopTimer(int curStage)

	UpdateHalted = True;
	Stage = curStage;
	RegisterForSingleUpdateGameTime(1.0);

EndFunction 