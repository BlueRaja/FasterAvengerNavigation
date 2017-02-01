// The room --> main base transition is controlled by UIFacilityGrid, so we can't disable it from XComHQ_FAN

class UIFacilityGrid_Listener_FAN extends UIScreenListener;

function OnInit(UIScreen screen)
{
    local FAN_Settings settings;
	if(UIFacilityGrid(screen) != none)
	{
        settings = new class'FAN_Settings';
        if(settings.InstantRoomTransitions)
        {
		    UIFacilityGrid(screen).bInstantInterp = true;
        }
	}
}

function OnLoseFocus(UIScreen screen)
{
    local FAN_Settings settings;
	if(UIFacilityGrid(screen) != none)
	{
        settings = new class'FAN_Settings';
		if(settings.InstantRoomTransitions)
        {
		    UIFacilityGrid(screen).bInstantInterp = true;
        }
	}
}

defaultproperties
{
	ScreenClass = none
}