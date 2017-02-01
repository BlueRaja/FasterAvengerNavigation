class XComHeadquartersCamera_FAN extends XComHeadquartersCamera;

function XComCameraState SetCameraState( class<XComCameraState> NewStateClass, float InInterpTime )
{
    if(NewStateClass == class'XComCamState_HQ_FreeMovement' && class'XComHQ_FAN'.default.InstantRoomTransitions)
    {
        InInterpTime *= 0.001f;
    }
    return super.SetCameraState(NewStateClass, InInterpTime);
}