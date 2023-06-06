//Search for:
namespace quest 
{

//Add after:

#ifdef __TOURNAMENT__
	int pc_set_kills(lua_State* L)
	{
		LPCHARACTER ch = CQuestManager::Instance().GetCurrentCharacterPtr();
		if (!ch)
			return 0;
		
		ch->SetKills((int)lua_tonumber(L, 1));
		
		return 0;
	}
	int pc_get_kills(lua_State* L)
	{
		LPCHARACTER ch = CQuestManager::Instance().GetCurrentCharacterPtr();
		if (!ch) {
			lua_pushnumber(L, 1);
			return 1;
		}
		lua_pushnumber(L, ch->GetKills());
		return 1;
	}
#endif



//Search for:
			{ NULL,			NULL			}
		};

		CQuestManager::instance().AddLuaFunctionTable("pc", pc_functions);
	}

//Add before { NULL, NULL}

#ifdef __TOURNAMENT__
			{ "set_kills", pc_set_kills },
			{ "get_kills", pc_get_kills },
#endif