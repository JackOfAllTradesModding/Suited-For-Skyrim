Scriptname S4S_PlayerAliasUtil extends ReferenceAlias  
{For now only lays the groundwork for continuing from the quick release.}

Event OnPlayerLoadGame()

	Timer.OnGameReload(); Will be modified with conditional once the quest continues past a quick release
EndEvent
S4S_MasterTimer Property Timer  Auto  
{Starts timer on game reloads in case it doesn't do that already.}
