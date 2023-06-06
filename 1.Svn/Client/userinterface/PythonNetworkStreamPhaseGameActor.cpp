//Search for:
kNetActorData.m_dwLevel = 0; // ���� ���� ǥ�� ����

//Add after:
#ifdef __TOURNAMENT__
	kNetActorData.m_dwKills = 0;
#endif




//Search for:
kNetActorData.m_dwLevel = chrInfoPacket.dwLevel;

//Add after:
#ifdef __TOURNAMENT__
		kNetActorData.m_dwKills = chrInfoPacket.dwKills;
#endif




//Search for:
kNetActorData.m_dwLevel = 0;

//Add After:
#ifdef __TOURNAMENT__
	kNetActorData.m_dwKills = 0;
#endif