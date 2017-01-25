;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname S4S_FG_Script Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
sslBaseAnimation[] anims;
anims = new sslBaseAnimation[1];

Actor[] sexDoers;
sexDoers = new Actor[2];

sexDoers[1]=Game.GetPlayer();
sexDoers[0]=(S4S_NewLifeSpeaker.GetReference() as Actor);

SLab.StartSex(sexDoers, anims, Game.GetPlayer());

sfsTimer.CoolDown();
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

SexLabFramework Property SLab  Auto;

ReferenceAlias Property S4S_NewLifeSpeaker  Auto  

S4S_CommentTimer Property sfsTimer  Auto  
