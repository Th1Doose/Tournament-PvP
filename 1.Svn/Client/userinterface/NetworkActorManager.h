//Search for:
	short	m_sAlignment;
	BYTE	m_byPKMode;
	DWORD	m_dwMountVnum;

	DWORD	m_dwGuildID;
	DWORD	m_dwLevel;

//Add after:
#ifdef __TOURNAMENT__
	BYTE	m_dwKills;
#endif

//Search for:
	DWORD m_dwMovSpd;
	DWORD m_dwAtkSpd;
	short m_sAlignment;

//Add after:
#ifdef __TOURNAMENT__
	BYTE	m_dwKills;
#endif

//Search for:
		m_dwMovSpd=0;
		m_dwAtkSpd=0;
		m_sAlignment=0;

//Add After:
#ifdef __TOURNAMENT__
		m_dwKills = 0;
#endif