//Search for:
		// 2004.10.21.myevan.°ø°Ý°¡´ÉÇÑ »ó´ë¸¸ ÀÚµ¿ °ø°Ý
		if (rkInstMain.IsAttackableInstance(rkInstVictim))
			__SetAutoAttackTargetActorID(rkInstVictim.GetVirtualID());
	}

//Add above:
#ifdef __TOURNAMENT__
		std::string stringMapName = CPythonBackground::Instance().GetWarpMapName();
		if (stringMapName == "metin2_map_c1") //Select map name for tournament PvP to not allow auto-attack.
		{
			CInstanceBase* pkInstVictim = NEW_FindActorPtr(rkInstVictim.GetVirtualID());
			if (pkInstVictim && pkInstVictim->IsPC())
				return;
		}
#endif