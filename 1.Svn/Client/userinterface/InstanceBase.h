//Search for:
			short	m_sAlignment;

//Add after:
#ifdef __TOURNAMENT__
			BYTE	m_dwKills;
#endif




//Search for:
	protected:
		DWORD					m_dwDuelMode;
		DWORD					m_dwEmoticonTime;

//Add After:
#ifdef __TOURNAMENT__
	protected:
		BYTE				m_dwKills;

	public:
		BYTE				GetKills() const { return m_dwKills; }
#endif