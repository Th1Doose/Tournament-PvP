//Search for:
bool CAN_ENTER_ZONE(const LPCHARACTER& ch, int map_index)
{
	switch (map_index)
	{
	case 301:
	case 302:
	case 303:
	case 304:
		if (ch->GetLevel() < 90)
			return false;
	}
	return true;

//Add after:
#ifdef __TOURNAMENT__
	switch (map_index)
	{
	case 41: //Vnum map Tournament PvP, you choose which map you want to use for this.
		if (ch->GetLevel() < 75 || ch->GetLevel() > 125) //Level Min and Max Tournament PvP
			return false;
	}
	return true;
#endif

//Search for:
void CHARACTER::Create(const char * c_pszName, DWORD vid, bool isPC)
{
	static int s_crc = 172814;

	char crc_string[128+1];
	snprintf(crc_string, sizeof(crc_string), "%s%p%d", c_pszName, this, ++s_crc);
	m_vid = VID(vid, GetCRC32(crc_string, strlen(crc_string)));

	if (isPC)
		m_stName = c_pszName;
}

//Add below:
#ifdef __TOURNAMENT__
bool CHARACTER::CheckMapVnum()
{
	switch(GetMapIndex())
	{
		case 41: //Block items on map 41 (Which is city 1 blues, change for Tournament PvP Map).
			break;
		default:
			return false;
	}
	return true;
}
#endif

//Search for:
		if (IsPC() == true && (LC_IsEurope() == true || LC_IsCanada() == true || LC_IsSingapore() == true))
		{
			addPacket.dwLevel = GetLevel();

//Add after:
#ifdef __TOURNAMENT__
		addPacket.dwKills = GetKills();
#endif

//Search for:
tab.skill_group	= m_points.skill_group;

//Add After:
#ifdef __TOURNAMENT__
	tab.kills = GetKills();
#endif

//Search for:
SetGold(t->gold);

//Add after:
#ifdef __TOURNAMENT__
	SetKills(t->kills);
#endif