class XComHeadquartersCamera_FAN extends XComHeadquartersCamera;

function XComCameraState SetCameraState( class<XComCameraState> NewStateClass, float InInterpTime )
{
    local FAN_Settings settings;
    if(NewStateClass == class'XComCamState_HQ_FreeMovement')
    {
        settings = new class'FAN_Settings';
        if(settings.InstantRoomTransitions)
        {
            InInterpTime *= 0.001f;
        }
    }
    return super.SetCameraState(NewStateClass, InInterpTime);
}