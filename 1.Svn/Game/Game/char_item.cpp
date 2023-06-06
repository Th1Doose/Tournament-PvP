//Search for:
static bool IS_SUMMON_ITEM(int vnum)
{
	switch (vnum)
	{
		case 22000:
		case 22010:
		case 22011:
		case 22020:
		case ITEM_MARRIAGE_RING:
			return true;
	}

	return false;
}

//Add after:
#ifdef __TOURNAMENT__
static bool IS_BLOCK_FOR_TOURNAMENT_PVP(int vnum)
{
	switch (vnum)
	{
		case 72723: //Vnum's of items you want to block on Tournament PvP.
		case 72724: //Vnum's of items you want to block on Tournament PvP.
		case 72725: //Vnum's of items you want to block on Tournament PvP.
		case 72726: //Vnum's of items you want to block on Tournament PvP.
		case 72727: //Vnum's of items you want to block on Tournament PvP.
		case 72728: //Vnum's of items you want to block on Tournament PvP.
		case 72729: //Vnum's of items you want to block on Tournament PvP.
		case 72730: //Vnum's of items you want to block on Tournament PvP.
		case 76004: //Vnum's of items you want to block on Tournament PvP.
		case 76005: //Vnum's of items you want to block on Tournament PvP.
		case 76021: //Vnum's of items you want to block on Tournament PvP.
		case 76022: //Vnum's of items you want to block on Tournament PvP.
		//If you want to add more, just change like the above.
			return true;
	}
	return false;
}
#endif

//Search for:
	if (false == FN_check_item_sex(this, item))
	{
		ChatPacket(CHAT_TYPE_INFO, LC_TEXT("¼ºº°ÀÌ ¸ÂÁö¾Ê¾Æ ÀÌ ¾ÆÀÌÅÛÀ» »ç¿ëÇÒ ¼ö ¾ø½À´Ï´Ù."));
		return false;
	}

//Add after:
#ifdef __TOURNAMENT__
	if (CheckMapVnum()){
		if (IS_BLOCK_FOR_TOURNAMENT_PVP(item->GetVnum()))
		{
			ChatPacket(CHAT_TYPE_INFO, "You can't use this item on Tournament PvP Map."); //Change the text according your taste.
			return false;
		}
	}
#endif