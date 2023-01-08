class M_ChuckNorris extends tk_NaliFighter
	config(tk_Monsters);

#EXEC OBJ LOAD FILE="Resources/rs_ChuckNorris.u" PACKAGE="tk_ChuckNorris"

function PlayVictory()
{
	if(Controller!=none)
	{
		Controller.bPreparingMove = true;
		Acceleration = vect(0,0,0);
		bShotAnim = true;
		SetAnimAction('gesture_taunt03');
		Controller.Destination = Location;
		Controller.GotoState('TacticalMove','WaitForAnim');
	}
}

defaultproperties
{
     FireRateScale=5.400000
     HitSound(0)=Sound'tk_ChuckNorris.ChuckNorris.chuckbah'
     HitSound(1)=Sound'tk_ChuckNorris.ChuckNorris.chuckbah'
     HitSound(2)=Sound'tk_ChuckNorris.ChuckNorris.chuckbah'
     HitSound(3)=Sound'tk_ChuckNorris.ChuckNorris.chuckbah'
     DeathSound(0)=Sound'tk_ChuckNorris.ChuckNorris.chuckbah'
     DeathSound(1)=Sound'tk_ChuckNorris.ChuckNorris.chuckbah'
     DeathSound(2)=Sound'tk_ChuckNorris.ChuckNorris.chuckbah'
     DeathSound(3)=Sound'tk_ChuckNorris.ChuckNorris.chuckbah'
     ChallengeSound(0)=Sound'tk_ChuckNorris.ChuckNorris.chuckbah'
     ChallengeSound(1)=Sound'tk_ChuckNorris.ChuckNorris.chuckbah'
     ChallengeSound(2)=Sound'tk_ChuckNorris.ChuckNorris.chuckbah'
     ChallengeSound(3)=Sound'tk_ChuckNorris.ChuckNorris.chuckbah'
     ScoringValue=20
     Health=550
	HP=550
     Mesh=SkeletalMesh'tk_ChuckNorris.ChuckNorris.Chuck'
     Skins(0)=Texture'tk_ChuckNorris.ChuckNorris.Chucky'
     Skins(1)=Texture'tk_ChuckNorris.ChuckNorris.chuck'
}
