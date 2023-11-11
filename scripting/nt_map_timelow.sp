#include <sourcemod>

bool CheckedOnce;

public Plugin:myinfo =
{
	name        = "NT Map TimeLow",
	author      = "bauxite",
	description = "Used with mp_timelimit, changes map on first client load if not enough time is left",
	version     = "0.1.0",
}

public void OnPluginStart()
{
	CheckedOnce = false;
}

public void OnClientPutInServer(int client)
{

	if (CheckedOnce == false)
	{
		int timeleft;
		GetMapTimeLeft(timeleft);

		if (timeleft < 600)
		{
			CheckedOnce = false;
			PrintToChatAll("Changing map due to low timeleft: %d", timeleft);
			ServerCommand("changlevel nt_ghost_ctg");
		}
		else
		{
		CheckedOnce = true;
		}
  
	}
 
}
