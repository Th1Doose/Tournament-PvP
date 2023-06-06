//Search for:
		void			MotionPacketEncode(BYTE motion, LPCHARACTER victim, struct packet_motion * packet);
		void			Motion(BYTE motion, LPCHARACTER victim = NULL);

//Add after:
#ifdef __TOURNAMENT__
		bool			CheckMapVnum();
#endif

//Search for:
	protected:
		int m_iLastPMPulse;
		int m_iPMCounter;

//Add after:
#ifdef __TOURNAMENT__
	public:
		void SetKills(BYTE kills) { m_dwKills = kills; }
		BYTE GetKills() const { return m_dwKills; }
	private:
		BYTE m_dwKills;
#endif