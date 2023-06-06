//Search for:
	if (IsPC())
	{
		SetHair(c_rkCreateData.m_dwHair);

//Add after:
#ifdef __TOURNAMENT__
		m_dwKills = c_rkCreateData.m_dwKills;
#endif

//Search for:
memset(m_awPart, 0, sizeof(m_awPart));

//Add before:
#ifdef __TOURNAMENT__
	m_dwKills = 0;
#endif