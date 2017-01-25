Scriptname S4S_CommentTimer extends Quest  
{Handles 1-3 hour swap between comments being enabled and comments not}

Int Function CoolDown()
	If (S4S_Master.GetStage() == 130)
		S4S_Master.SetStage(135);
	ElseIf (S4S_Master.GetStage() == 140)
		S4S_Master.SetStage(145);
	Else
		Return 1;
	EndIf

	RegisterForSingleUpdateGameTime(1.0 + Utility.RandomFloat(0.0, 2.0));
	GoToState("Frozen");
	Return 0;
EndFunction

Event OnUpdateGameTime()
	;Should not do anything in this state
EndEvent

State Frozen

Int Function CoolDown()
	Return 2;
EndFunction

Event OnUpdateGameTime()
	If (S4S_Master.GetStage() == 135)
		S4S_Master.SetStage(130)
	ElseIf (S4S_Master.GetStage() == 145)
		S4S_Master.SetStage(140)
	EndIf

	GoToState("")
EndEvent

EndState

Quest Property S4S_Master Auto;
Quest Property S4S_Master2  Auto  
{first property is defunct, but not deleted to avoid log errors on startup}

Int Property S4S_SexCount = 0 Auto  
{Tracks the number of times the player gets fucked after they become fully suited}
