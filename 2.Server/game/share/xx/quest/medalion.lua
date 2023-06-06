quest medalion begin
	state start begin

		when login or levelup begin
			if pc.get_map_index() == 41 then -- change 41 to the map_vnum of tournament pvp.
				if pc.count_item(100145) < 1 then -- this checks if the player has less than 1 medalion in inventory, if so, it will give the player one. (If you want it any other way, change it or contact me.)
					pc.give_item2(100145, 1)
				else
					return
				end
			end
		end

		--MEDALION 1--
		when 100145.use begin
			say_title("Medalion")
			local s = select("REQUIREMENTS","UPGRADE","Cancel")
			if s == 1 then
				local kills = 5
				local x = pc.get_kills()
				say_title("Medalion:")
				say("To improve this item you need:")
				say("")
				say_reward(string.format("Kills: %d", kills))
				say_reward(string.format("You have: %d", x))
			elseif s == 2 then
				local vkls = 5
				local kills = pc.get_kills()
				say_title("Medalion")
				say_reward(string.format("You need at least %d kills.", vkls))
				say_reward(string.format("You have: %d kills.", kills))
				say("")
				say("You really want to improve your item?")
				local s = select("Yes","No")
				if s == 1 then
					local vkls = 5
					local kills = pc.get_kills()
					if pc.get_kills() >= vkls then
						pc.remove_item(100145, 1)
						pc.give_item2(100146, 1)
						pc.set_kills(pc.get_kills() * 0)
					else
						say_title("Medalion:")
						say("You don't fulfill the requirements.")
					end
				elseif s == 2 then
					return
				end
			elseif s == 3 then
				return
			end
		end

		--MEDALION 2--
		when 100146.use begin
			say_title("Medalion")
			local s = select("REQUIREMENTS","UPGRADE","Cancel")
			if s == 1 then
				local kills = 20
				local x = pc.get_kills()
				say_title("Medalion:")
				say("To improve this item you need:")
				say("")
				say_reward(string.format("Kills: %d", kills))
				say_reward(string.format("You have: %d", x))
			elseif s == 2 then
				local vkls = 20
				local kills = pc.get_kills()
				say_title("Medalion")
				say_reward(string.format("You need at least %d kills.", vkls))
				say_reward(string.format("You have: %d kills.", kills))
				say("")
				say("You really want to improve your item?")
				local s = select("Yes","No")
				if s == 1 then
					local vkls = 20
					local kills = pc.get_kills()
					if pc.get_kills() >= vkls then
						pc.remove_item(100146, 1)
						pc.give_item2(100147, 1)
						pc.set_kills(pc.get_kills() * 0)
					else
						say_title("Medalion:")
						say("You don't fulfill the requirements.")
					end
				elseif s == 2 then
					return
				end
			elseif s == 3 then
				return
			end
		end

		--MEDALION 3--
		when 100147.use begin
			say_title("Medalion")
			local s = select("REQUIREMENTS","UPGRADE","Cancel")
			if s == 1 then
				local kills = 60
				local x = pc.get_kills()
				say_title("Medalion:")
				say("To improve this item you need:")
				say("")
				say_reward(string.format("Kills: %d", kills))
				say_reward(string.format("You have: %d", x))
			elseif s == 2 then
				local vkls = 60
				local kills = pc.get_kills()
				say_title("Medalion")
				say_reward(string.format("You need at least %d kills.", vkls))
				say_reward(string.format("You have: %d kills.", kills))
				say("")
				say("You really want to improve your item?")
				local s = select("Yes","No")
				if s == 1 then
					local vkls = 60
					local kills = pc.get_kills()
					if pc.get_kills() >= vkls then
						pc.remove_item(100147, 1)
						pc.give_item2(100148, 1)
						pc.set_kills(pc.get_kills() * 0)
					else
						say_title("Medalion:")
						say("You don't fulfill the requirements.")
					end
				elseif s == 2 then
					return
				end
			elseif s == 3 then
				return
			end
		end

		--MEDALION 4--
		when 100148.use begin
			say_title("Medalion")
			local s = select("REQUIREMENTS","UPGRADE","Cancel")
			if s == 1 then
				local kills = 140
				local x = pc.get_kills()
				say_title("Medalion:")
				say("To improve this item you need:")
				say("")
				say_reward(string.format("Kills: %d", kills))
				say_reward(string.format("You have: %d", x))
			elseif s == 2 then
				local vkls = 140
				local kills = pc.get_kills()
				say_title("Medalion")
				say_reward(string.format("You need at least %d kills.", vkls))
				say_reward(string.format("You have: %d kills.", kills))
				say("")
				say("You really want to improve your item?")
				local s = select("Yes","No")
				if s == 1 then
					local vkls = 140
					local kills = pc.get_kills()
					if pc.get_kills() >= vkls then
						pc.remove_item(100148, 1)
						pc.give_item2(100149, 1)
						pc.set_kills(pc.get_kills() * 0)
					else
						say_title("Medalion:")
						say("You don't fulfill the requirements.")
					end
				elseif s == 2 then
					return
				end
			elseif s == 3 then
				return
			end
		end

		--MEDALION 5--
		when 100149.use begin
			say_title("Medalion")
			local s = select("REQUIREMENTS","UPGRADE","Cancel")
			if s == 1 then
				local kills = 300
				local gold = 2000000
				local x = pc.get_kills()
				local l = pc.get_gold()
				say_title("Medalion:")
				say("To improve this item you need:")
				say("")
				say_reward(string.format("Kills: %d", kills))
				say_reward(string.format("Gold: %d", gold))
				say_reward(string.format("You have: %d kills", x))
				say_reward(string.format("You have: %d gold", l))
			elseif s == 2 then
				local vkls = 300
				local gold = 2000000
				local gld = pc.get_gold()
				local kills = pc.get_kills()
				say_title("Medalion")
				say_reward(string.format("You need at least %d kills.", vkls))
				say_reward(string.format("You need at least %d gold.", gold))
				say("")
				say_reward(string.format("You have: %d kills.", kills))
				say_reward(string.format("You have: %d gold.", gld))
				say("")
				say("You really want to improve your item?")
				local s = select("Yes","No")
				if s == 1 then
					local vkls = 300
					local gold = 2000000
					local gld = pc.get_gold()
					local kills = pc.get_kills()
					if pc.get_kills() >= vkls and pc.get_gold() >= gold then
						pc.remove_item(100149, 1)
						pc.give_item2(100150, 1)
						pc.change_gold(-2000000)
						pc.set_kills(pc.get_kills() * 0)
					else
						say_title("Medalion:")
						say("You don't fulfill the requirements.")
					end
				elseif s == 2 then
					return
				end
			elseif s == 3 then
				return
			end
		end

		--MEDALION 6--
		when 100150.use begin
			say_title("Medalion")
			local s = select("REQUIREMENTS","UPGRADE","Cancel")
			if s == 1 then
				local kills = 620
				local gold = 5000000
				local x = pc.get_kills()
				local l = pc.get_gold()
				say_title("Medalion:")
				say("To improve this item you need:")
				say("")
				say_reward(string.format("Kills: %d", kills))
				say_reward(string.format("Gold: %d", gold))
				say_reward(string.format("You have: %d kills", x))
				say_reward(string.format("You have: %d gold", l))
			elseif s == 2 then
				local vkls = 620
				local gold = 5000000
				local gld = pc.get_gold()
				local kills = pc.get_kills()
				say_title("Medalion")
				say_reward(string.format("You need at least %d kills.", vkls))
				say_reward(string.format("You need at least %d gold.", gold))
				say("")
				say_reward(string.format("You have: %d kills.", kills))
				say_reward(string.format("You have: %d gold.", gld))
				say("")
				say("You really want to improve your item?")
				local s = select("Yes","No")
				if s == 1 then
					local vkls = 620
					local gold = 5000000
					local gld = pc.get_gold()
					local kills = pc.get_kills()
					if pc.get_kills() >= vkls and pc.get_gold() >= gold then
						pc.remove_item(100150, 1)
						pc.give_item2(100151, 1)
						pc.change_gold(-5000000)
						pc.set_kills(pc.get_kills() * 0)
					else
						say_title("Medalion:")
						say("You don't fulfill the requirements.")
					end
				elseif s == 2 then
					return
				end
			elseif s == 3 then
				return
			end
		end

		--MEDALION 7--
		when 100151.use begin
			say_title("Medalion")
			local s = select("REQUIREMENTS","UPGRADE","Cancel")
			if s == 1 then
				local kills = 1240
				local gold = 8000000
				local x = pc.get_kills()
				local x = pc.get_gold()
				say_title("Medalion:")
				say("To improve this item you need:")
				say("")
				say_reward(string.format("Kills: %d", kills))
				say_reward(string.format("Gold: %d", gold))
				say_reward(string.format("You have: %d kills", x))
				say_reward(string.format("You have: %d gold", l))
			elseif s == 2 then
				local vkls = 1240
				local gold = 8000000
				local gld = pc.get_gold()
				local kills = pc.get_kills()
				say_title("Medalion")
				say_reward(string.format("You need at least %d kills.", vkls))
				say_reward(string.format("You need at least %d gold.", gold))
				say("")
				say_reward(string.format("You have: %d kills.", kills))
				say_reward(string.format("You have: %d gold.", gld))
				say("")
				say("You really want to improve your item?")
				local s = select("Yes","No")
				if s == 1 then
					local vkls = 1240
					local gold = 8000000
					local gld = pc.get_gold()
					local kills = pc.get_kills()
					if pc.get_kills() >= vkls and pc.get_gold() >= gold then
						pc.remove_item(100151, 1)
						pc.give_item2(100152, 1)
						pc.change_gold(-8000000)
						pc.set_kills(pc.get_kills() * 0)
					else
						say_title("Medalion:")
						say("You don't fulfill the requirements.")
					end
				elseif s == 2 then
					return
				end
			elseif s == 3 then
				return
			end
		end

		--MEDALION 8--
		when 100152.use begin
			say_title("Medalion")
			local s = select("REQUIREMENTS","UPGRADE","Cancel")
			if s == 1 then
				local kills = 2500
				local gold = 10000000
				local x = pc.get_kills()
				local l = pc.get_gold()
				say_title("Medalion:")
				say("To improve this item you need:")
				say("")
				say_reward(string.format("Kills: %d", kills))
				say_reward(string.format("Gold: %d", gold))
				say_reward(string.format("You have: %d kills", x))
				say_reward(string.format("You have: %d gold", l))
			elseif s == 2 then
				local vkls = 2500
				local gold = 10000000
				local gld = pc.get_gold()
				local kills = pc.get_kills()
				say_title("Medalion")
				say_reward(string.format("You need at least %d kills.", vkls))
				say_reward(string.format("You need at least %d gold.", gold))
				say("")
				say_reward(string.format("You have: %d kills.", kills))
				say_reward(string.format("You have: %d gold.", gld))
				say("")
				say("You really want to improve your item?")
				local s = select("Yes","No")
				if s == 1 then
					local vkls = 2500
					local gold = 10000000
					local gld = pc.get_gold()
					local kills = pc.get_kills()
					if pc.get_kills() >= vkls and pc.get_gold() >= gold then
						pc.remove_item(100152, 1)
						pc.give_item2(100153, 1)
						pc.change_gold(-10000000)
						pc.set_kills(pc.get_kills() * 0)
					else
						say_title("Medalion:")
						say("You don't fulfill the requirements.")
					end
				elseif s == 2 then
					return
				end
			elseif s == 3 then
				return
			end
		end

		--MEDALION 9--
		when 100153.use begin
			say_title("Medalion")
			local s = select("REQUIREMENTS","UPGRADE","Cancel")
			if s == 1 then
				local kills = 5020
				local gold = 20000000
				local x = pc.get_kills()
				local l = pc.get_gold()
				say_title("Medalion:")
				say("To improve this item you need:")
				say("")
				say_reward(string.format("Kills: %d", kills))
				say_reward(string.format("Gold: %d", gold))
				say_reward(string.format("You have: %d kills", x))
				say_reward(string.format("You have: %d gold", l))
			elseif s == 2 then
				local vkls = 5020
				local gold = 20000000
				local gld = pc.get_gold()
				local kills = pc.get_kills()
				say_title("Medalion")
				say_reward(string.format("You need at least %d kills.", vkls))
				say_reward(string.format("You need at least %d gold.", gold))
				say("")
				say_reward(string.format("You have: %d kills.", kills))
				say_reward(string.format("You have: %d gold.", gld))
				say("")
				say("You really want to improve your item?")
				local s = select("Yes","No")
				if s == 1 then
					local vkls = 5020
					local gold = 20000000
					local gld = pc.get_gold()
					local kills = pc.get_kills()
					if pc.get_kills() >= vkls and pc.get_gold() >= gold then
						pc.remove_item(100153, 1)
						pc.give_item2(100154, 1)
						pc.change_gold(-20000000)
						pc.set_kills(pc.get_kills() * 0)
					else
						say_title("Medalion:")
						say("You don't fulfill the requirements.")
					end
				elseif s == 2 then
					return
				end
			elseif s == 3 then
				return
			end
		end

		--MEDALION 10--
		when 100154.use begin
			say_title("Medalion")
			local s = select("REQUIREMENTS","UPGRADE","Cancel")
			if s == 1 then
				local kills = 10040
				local gold = 30000000
				local x = pc.get_kills()
				local l = pc.get_gold()
				say_title("Medalion:")
				say("To improve this item you need:")
				say("")
				say_reward(string.format("Kills: %d", kills))
				say_reward(string.format("Gold: %d", gold))
				say_reward(string.format("You have: %d kills", x))
				say_reward(string.format("You have: %d gold", l))
			elseif s == 2 then
				local vkls = 10040
				local gold = 30000000
				local gld = pc.get_gold()
				local kills = pc.get_kills()
				say_title("Medalion")
				say_reward(string.format("You need at least %d kills.", vkls))
				say_reward(string.format("You need at least %d gold.", gold))
				say("")
				say_reward(string.format("You have: %d kills.", kills))
				say_reward(string.format("You have: %d gold.", gld))
				say("")
				say("You really want to improve your item?")
				local s = select("Yes","No")
				if s == 1 then
					local vkls = 10040
					local gold = 30000000
					local gld = pc.get_gold()
					local kills = pc.get_kills()
					if pc.get_kills() >= vkls and pc.get_gold() >= gold then
						pc.remove_item(100154, 1)
						pc.give_item2(100155, 1)
						pc.change_gold(-30000000)
						pc.set_kills(pc.get_kills() * 0)
					else
						say_title("Medalion:")
						say("You don't fulfill the requirements.")
					end
				elseif s == 2 then
					return
				end
			elseif s == 3 then
				return
			end
		end

		--MEDALION 11--
		when 100155.use begin
			say_title("Medalion")
			local s = select("ABSORPTION","Cancel")
			if s == 1 then
				say_title("Medalion")
				say("Once you absorve the item,")
				say("You will receive permanent bonuses.")
				say("Want to continue?")
				local s = select("Yes","No")
				if s ==  1 then
					local num1 = 10
					local num2 = "Half-Humans."
					local num3 = 5000
					local num4 = "HP."
					local num5 = 10
					local num6 = "Monsters."
					local num7 = 5
					local num8 = "Criticals."
					local num9 = 5
					local num10 = "Pierce."
					say_reward(string.format("You Received: %d %s", num1 , num2 ))
					say_reward(string.format("You Received: %d %s", num3 , num4 ))
					say_reward(string.format("You Received: %d %s", num5 , num6 ))
					say_reward(string.format("You Received: %d %s", num7 , num8 ))
					say_reward(string.format("You Received: %d %s", num9 , num10 ))
					affect . add_collect ( 17 , 10 , 60 * 60 * 24 * 365 * 60 )
					affect . add_collect ( 1 , 5000 , 60 * 60 * 24 * 365 * 60 )
					affect . add_collect ( 63 , 10 , 60 * 60 * 24 * 365 * 60 )
					affect . add_collect ( 15 , 10 , 60 * 60 * 24 * 365 * 60 )
					affect . add_collect ( 16 , 10 , 60 * 60 * 24 * 365 * 60 )
					pc.remove_item(100155)
					pc.give_item2(100156)
				elseif s == 2 then
					return
				end
			elseif s == 2 then
				return
			end
		end

		--MEDALION 12--
		when 100156.use begin
			say_title("Medalion")
			local s = select("STATUS","Cancel")
			if s == 1 then
				local kxlks = pc.get_kills()
				say_title("Medalion")
				say_reward(string.format("You have %d Kills stored in the item.", kxlks))
			elseif s == 2 then
				return
			end
		end

		when kill with npc.is_pc() begin
			if pc.get_map_index() == 41 then --change 41 to the number of tournament pvp map.
				if pc.get_empire() == 3 and npc.get_empire() == 1 or npc.get_empire() == 2 then
					pc.set_kills(pc.get_kills() + 1)
				elseif pc.get_empire() == 2 and npc.get_empire() == 1 or npc.get_empire() == 3 then
					pc.set_kills(pc.get_kills() + 1)
				elseif pc.get_empire() == 1 and npc.get_empire() == 2 or npc.get_empire() == 3 then
					pc.set_kills(pc.get_kills() + 1)
				end
			end
		end

	end
end