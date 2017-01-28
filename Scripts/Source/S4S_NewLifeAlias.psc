Scriptname S4S_NewLifeAlias extends ReferenceAlias  
{Just runs a thing to keep the timer moving}

S4S_NewLifeTimer Property Timer  Auto  

Event OnPlayerLoadGame()

	Timer.OnGameReload();

EndEvent