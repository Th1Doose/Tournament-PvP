//Search for:
	m_dwGuildID = src.m_dwGuildID;
	m_dwLevel = src.m_dwLevel;
	m_stName = src.m_stName;

//Add after:
#ifdef __TOURNAMENT__
	m_dwKills = src.m_dwKills;
#endif

//Search for:
	m_sAlignment=0;
	m_byPKMode=0;
	m_dwMountVnum=0;

	m_stName="";

//Add after:
#ifdef __TOURNAMENT__
	m_dwKills = 0;
#endif

//Search for:
 	kCreateData.m_lPosX=rkNetActorData.m_lCurX;
	kCreateData.m_lPosY=rkNetActorData.m_lCurY;
	kCreateData.m_stName=rkNetActorData.m_stName;

//Add after:
#ifdef __TOURNAMENT__
	kCreateData.m_dwKills = rkNetActorData.m_dwKills;
#endif