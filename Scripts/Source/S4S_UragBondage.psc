Scriptname S4S_UragBondage extends Quest  

Actor Property PlayerRef  Auto  

Quest Property S4S_Master  Auto  

Quest Property S4S_Dummy  Auto  

zadLibs Property libs Auto

Message Property S4S_UragBondage1msg Auto
Message Property S4S_UragBondage2msg Auto
Message Property S4S_UragBondage3msg Auto

Function TieHerUp()

	If S4S_Master.GetStage() < 30
		S4S_UragBondage1msg.show()
		libs.ManipulateGenericDevice(PlayerREF, libs.plugSoulGemVag, true)
		libs.ManipulateGenericDevice(PlayerREF, libs.plugSoulGemAn, true)
		libs.ManipulateGenericDevice(PlayerREF, libs.beltPadded, true)
		S4S_Dummy.SetStage(46)
	ElseIf S4S_Master.GetStage() < 90
		S4S_UragBondage2msg.show()
		libs.ManipulateGenericDevice(PlayerREF, libs.gagBall, true)
		S4S_Dummy.SetStage(46)
	Else
		S4S_UragBondage3msg.Show()
		S4S_Dummy.SetStage(47)
	EndIf
	;Set Stage 46 if bound, 47 if not
EndFunction 