#include <sourcemod>

bool CheckedOnce;

public Plugin myinfo =
{
	name        = "NT Map TimeLow",
	author      = "bauxite",
	description = "Used with mp_timelimit, changes map on first client load if not enough time is left",
	version     = "0.1.1",
};

public void OnMapStart()
{
	CheckedOnce = false;
}

public void OnClientPutInServer(int client)
{

	if (CheckedOnce == false)
	{
		int timeleft;
		GetMapTimeLeft(timeleft);

		if (timeleft < 2000)
		{
			CheckedOnce = false;
			PrintToChatAll("Changing map due to low timeleft: %d", timeleft);
			ServerCommand("changelevel nt_ghost_ctg");
		}
		else
		{
		CheckedOnce = true;
		}
  
	}
 
}
