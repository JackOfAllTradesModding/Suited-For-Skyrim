Scriptname S4S_ButtonScript extends ObjectReference  
{Handles the button in bleakcoast cave}

bool property useOnce = FALSE auto
{Can be used only once? Default: FALSE}

auto STATE active
	EVENT onActivate(objectReference actronaut)
		;playAnimationandWait("down")
		playAnimation("down")
		gotoState("inactive")
		activate(self as ObjectReference)
		playAnimation("up")
		gotoState("active")
		S4S_Dummy.SetStage(100);
		Utility.Wait(0.1);
		S4S_Master.SetStage(S4S_Master.GetStage()+10);
	endEVENT
endSTATE

STATE inactive
	; do nothing in this state
endSTATE

int Property TriggerType  Auto  
Quest Property S4S_Master Auto
Quest Property S4S_Dummy Auto