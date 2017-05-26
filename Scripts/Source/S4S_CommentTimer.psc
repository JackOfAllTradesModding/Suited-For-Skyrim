Scriptname S4S_CommentTimer extends Quest Conditional
{Handles 1-3 hour swap between comments being enabled and comments not}

Int Function CoolDown()
	
	S4S_CommentCoolDown.SetValue(1)	
	RegisterForSingleUpdateGameTime(1.0 + Utility.RandomFloat(0.0, 2.0));
	GoToState("Frozen");
	Return 0;
EndFunction

Event OnUpdateGameTime()
	;Should not do anything in this state
EndEvent

;=============================================================================

State Frozen

Int Function CoolDown()
	Return 2;
EndFunction

Event OnUpdateGameTime()
	
	S4S_CommentCoolDown.SetValue(0)
	GoToState("")
EndEvent

EndState

Quest Property S4S_Master Auto;

Int Property S4S_SexCount = 0 Auto  
{Tracks the number of times the player gets fucked after they become fully suited}

Bool Property S4S_FGAllowed = True Auto Conditional;

Quest Property S4S_NewLife  Auto 
GlobalVariable Property S4S_CommentCoolDown  Auto  
