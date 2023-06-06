//Search for:
"horse_skill_point = %d, "

//Add after:
#ifdef __TOURNAMENT__
			"kills = %d, "
#endif

//Search for:
pkTab->horse_skill_point,

//Add after:
#ifdef __TOURNAMENT__
		pkTab->kills
#endif

//Search for:
"horse_skill_point, "

//Add after:
#ifdef __TOURNAMENT__
												"kills "
#endif

//Search for:
str_to_number(pkTab->horse_skill_point, row[col++]);

//Add after:
#ifdef __TOURNAMENT__
	str_to_number(pkTab->kills, row[col++]);
#endif

//Search for:
"gold, "

//Add after:
#ifdef __TOURNAMENT__
													"kills, "
#endif

//Search for:
													,
													GetTablePostfix(),
													packet->account_id,

//Add before ,:
#ifdef __TOURNAMENT__
													"0, "
#endif