class XCGRI_FAN extends XComGameReplicationInfo;

simulated function DoRemoteEvent(name evt, optional bool bRunOnClient)
{
    local FAN_Settings settings;
	if (evt == 'PreM_GoToSoldier')
    {
        settings = new class'FAN_Settings';
        if(settings.InstantRoomTransitions)
        {
		    return;
        }
    }

	super.DoRemoteEvent (evt, bRunOnClient);
}