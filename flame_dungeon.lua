quest flame_dungeon begin
	state start begin   
	
		function setting()
			return
			{
			["bossroom_entry_pos"] = {8109,6867},
			["boss_pos"] = {686,637},
			["doors_pos"] = {
				{320,394},
				{293,359},
				{333,321},
				{378,320},
				{400,355},
				{394,401}
			},
			["idoors_pos"] = {
				{268,447},
				{234,359},
				{300,264},
				{454,217},
				{470,355},
				{467,469}
			},
			["doors_dir"] = {135,90,210,152,90,223},
			["idoors_dir"] = {135,90,210,135,90,239},
			["dungeon_entry_pos"] = {7761, 6736},
			["DUNGEON_MAN_bpos"] = {690,722},
			["DUNGEON_MAN_pos"] = {354,362},
			["LEVEL2_STONE_pos"] = {195,352},
			["LEVEL4_TARGET_pos"] = {470,175},
			["LEVEL5_STONE_pos"] = {
					{486, 345},
					{511, 336},
					{525, 349},
					{521, 365},
					{503, 372},
					{486, 365},
					{500, 354}
			},
			["LEVEL6_TARGET_pos"] = {511,480},
			["outside_entry_pos"] = {5980,7075},
			 
			}
		end
		
		function is_flamed(idx)
			return idx >= 351 * 10000 and idx < (351 + 1) *10000
		end
		
		function make_dungeon() -- ?? ???
			local setting = flame_dungeon.setting()
			d.new_jump_party(351, setting.dungeon_entry_pos[1], setting.dungeon_entry_pos[2])
			d.regen_file("data/dungeon/flame_dungeon/npc.txt")
			d.setf("level",0)
			for i=1,6 do
				d.set_unique("door"..i, d.spawn_mob_ac_dir(20387, setting.doors_pos[i][1], setting.doors_pos[i][2],setting.doors_dir[i]))
			end
			for i=1,6 do
				d.set_unique("idoor"..i, d.spawn_mob_ac_dir(20388, setting.idoors_pos[i][1], setting.idoors_pos[i][2],setting.idoors_dir[i]))
			end
			d.setf("clear_count",0)
			d.setf("started",0)
			d.setf("dungeon_enter",0)
			d.setf("counter_11", 180) -- fix 250 di ben yaptm sabanasd
			d.setf("counter_13", 180) -- fix 250 di ben yaptm sabanasd
		end
		
		function razador_kati()
			local setting = flame_dungeon.setting()
			if pc.get_level() < 104 then
				say("Grup lideri en az 104. seviye olmal�.[ENTER]104. seviyeye ula�t���nda tekrar gel.")
				return
			else
				say("Am-heh Yuta��'n� ge�erek kaderinle y�zle�mek[ENTER]istiyor musun?")
				local warp = select("Gir","Belki sonra")
				if warp == 1 then
					d.setf("level",17)
					d.jump_all(setting.bossroom_entry_pos[1],setting.bossroom_entry_pos[2])
					d.set_regen_file ("data/dungeon/flame_dungeon/".."fd_fild_boss.txt")
					d.spawn_mob(6091,setting.boss_pos[1],setting.boss_pos[2])
				end
			end
		end
		
		function level_clear()
			d.setf("level",0)
			d.clear_regen()
			d.purge_area(750000,620000,817400,689400)
		end
		
		function clear_timer(inx)
			clear_server_timer ("flame_dungeon_0m_left_timer", inx)
			clear_server_timer ("flame_dungeon_1m_left_timer", inx)
			clear_server_timer ("flame_dungeon_5m_left_timer", inx)
			clear_server_timer ("flame_dungeon_10m_left_timer", inx)
			clear_server_timer ("flame_dungeon_15m_left_timer", inx)
			clear_server_timer ("flame_dungeon_30m_left_timer", inx)
			clear_server_timer ("flame_dungeon_45m_left_timer", inx)
			clear_server_timer ("flame_dungeon_ticket_remove", inx) 
		end
		
		when login begin
			local idx = pc.get_map_index()
			if idx == 351 then
			elseif flame_dungeon.is_flamed(idx) then
				local ticketGroup = {71175, 1}
				if d.getf("dungeon_enter") == 0 then -- ???? ???
					local canPass = false
					for i=1, table.getn(ticketGroup),2 do
						if pc.count_item(ticketGroup[i]) >= ticketGroup[i+1] then
							canPass = true
							break
						end
					end
 
					if get_global_time() - pc.getf("flame_dungeon","exit_time") < 30 * 60 then
						say("Tekrar i�eriye girebilmen i�in gereken s�re[ENTER]hen�z dolmad�.")
						timer("flame_dungeon_warp_timer", 5)
					elseif not canPass then
						say("K�rm�z� Ejderha Kalesi'ne ancak grup olarak girebilirsin.[ENTER]Ayr�ca ge�i� izni gerekir.")
						timer("flame_dungeon_warp_timer", 5)
					elseif pc.get_level() < 100 then
						say("Devam edebilmek i�in t�m grup �yelerinin,[ENTER]100.Seviye'ye ula�m�� olmas� gerekli.")
						timer("flame_dungeon_warp_timer", 5)
					end
				elseif pc.getf("flame_dungeon","ticket_delete") == 0 then
					for i=1, table.getn(ticketGroup),2 do
						if pc.count_item(ticketGroup[i]) >= ticketGroup[i+1] then
							pc.remove_item(ticketGroup[i], ticketGroup[i+1])
							break
						end
					end
					pc.setf("flame_dungeon","ticket_delete",1)
				end
			else
				pc.setf("flame_dungeon","ticket_delete",0)
			end
		end
		
		when flame_dungeon_warp_timer.timer begin
			local setting = flame_dungeon.setting()
			pc.warp(setting.outside_entry_pos[1]*100, setting.outside_entry_pos[2] * 100, 62)
		end
		
		when logout begin
			local idx = pc.get_map_index()
			if flame_dungeon.is_flamed(idx) then 
				if d.getf("dungeon_enter") == 1 then
					pc.setf("flame_dungeon","exit_time",get_global_time())
				end
			end
		end
		
		when 20394.chat."GM: Ejderha Kalesi" with pc.is_gm() begin
			local s = select("Ejderha Kalesi A�/Kapat","Hi�bir �ey")
			if s == 1 then
				if game.get_event_flag("ejderha_kalesi") == 0 then
					say("Ejderha Kalesi �u anda kapal�.")
					say("Aktif etmek istiyor musun?")
					if select("Evet","Hay�r") == 2 then return end
					game.set_event_flag("ejderha_kalesi",1)
					return
				else
					say("Ejderha Kalesi �u anda a��k.")
					say("Kapatmak istiyor musun?")
					if select("Evet","Hay�r") == 2 then return end
					game.set_event_flag("ejderha_kalesi",0)
					return
				end
			elseif s == 2 then
				return
			end
		end
		
		when 20394.chat."K�rm�z� Ejderha Kalesi" with game.get_event_flag("ejderha_kalesi") == 1 begin
			local setting = flame_dungeon.setting()
			if party.is_party() then
				local party_check = 0
				if d.find(party.getf("dungeon_index")) then
					party_check = (d.getf_from_map_index("party_leader_pid", party.getf("dungeon_index")) == party.get_leader_pid())
				end
				if d.find(party.getf("dungeon_index")) and party_check then
					if get_global_time() - pc.getf("flame_dungeon","exit_time") < 5 * 60 then
						local dungeon_level = d.getf_from_map_index("level", party.getf("dungeon_index"))
						if dungeon_level == 17 then -- ??
							pc.warp(setting.bossroom_entry_pos[1] * 100, setting.bossroom_entry_pos[2] * 100, party.getf("dungeon_index"))
						else
							pc.warp(setting.dungeon_entry_pos[1] * 100, setting.dungeon_entry_pos[2] * 100, party.getf("dungeon_index"))
						end
					else
						say_title(mob_name(20394))
						say(" K�rm�z� Ejderha Kalesi d���nda[ENTER]5 dakikadan fazla zaman kaybettin.[ENTER]Art�k grubuna kat�lamazs�n.")
					end
				else
					local pids = {party.get_member_pids()}
					local noTicketMembers = {}
					local notEnoughLevelMembers = {}
					local ticketCheck = true
					local levelCheck = true
					local ticketGroup = {71175, 1}
					for i, pid in next, pids, nil do
						q.begin_other_pc_block(pid)
						local canPass = false
						for idx=1, table.getn(ticketGroup),2 do
							if pc.count_item(ticketGroup[idx]) >= ticketGroup[idx+1] then
								canPass = true
								break
							end
						end
						if not canPass then
							table.insert(noTicketMembers, pc.get_name())
							ticketCheck = false
						end
						if pc.level < 100 then
							table.insert(notEnoughLevelMembers, pc.get_name())
							levelCheck = false
						end
						q.end_other_pc_block()
					end
					if not ticketCheck then
						say_title(mob_name(20394))
						say("K�rm�z� Ejderha Kalesi'ne girebilmek i�in,[ENTER]b�t�n grup �yelerinin[ENTER]ge�i� biletine sahip olmas� gereklidir.[ENTER]Ge�i� izni olmayan �yeler:")
						for i, name in next, noTicketMembers, nil do
							say(color(1,1,0), "	"..name)
						end
						if levelCheck then
							return
						else
							wait()
						end
					end
					if not levelCheck then
						say_title(mob_name(20394))
						say("Uyar�! K�rm�z� Ejderha Kalesi'ne girebilmek i�in,[ENTER]b�t�n grup �yelerinin[ENTER]100.Seviye'ye ula�m�� olmas� gereklidir.[ENTER]Gerekli seviyede olmayan �yeler:")
						for i, name in next, notEnoughLevelMembers, nil do
							say(color(1,1,0), "	"..name)
						end
						return
					end
					if party.is_leader() then
						say("K�rm�z� Ejderha Kalesi'ne girmek istiyor musun?")
						local warp = select("Gir","Belki sonra")
						if warp == 1 then
							if party.is_map_member_flag_lt("exit_time", get_global_time() - 30 * 60 ) then
								local setting = flame_dungeon.setting()
								flame_dungeon.make_dungeon()
							else
								say("K�rm�z� Ejderha Kalesi'ne giri� yapabilmek i�in[ENTER]hen�z s�reniz dolmam��.")
							end
						end
						 
						party.setf("flame_dungeon_boss_kill_count", 0)
						 
					else
						say("Sadece grup liderleri giri� izni talep edebilir.")
					end
				end
			else
				say("Cesaretini takdir ediyorum.[ENTER]Fakat, K�rm�z� Ejderha Kalesi'ne tek ba��na[ENTER]giremezsin. G��l� bir grup kur ve daha sonra[ENTER]tekrar gel.")
			end
		end
		
		when flame_dungeon_45m_left_timer.timer begin
			d.notice(string.format("Kalan s�re: %d dakika", 45))
			d.notice("Grup s�renin sonunda kaleden d��ar� ���nlan�r.")
			timer("flame_dungeon_30m_left_timer", 15*60)
		end
		
		when flame_dungeon_30m_left_timer.timer begin
			d.notice(string.format("Kalan s�re: %d dakika", 30))
			d.notice("Grup s�renin sonunda kaleden d��ar� ���nlan�r.")
			timer("flame_dungeon_15m_left_timer", 15*60)
		end
		
		when flame_dungeon_15m_left_timer.timer begin
			d.notice(string.format("Kalan s�re: %d dakika", 15))
			 d.notice("Grup s�renin sonunda kaleden d��ar� ���nlan�r.")
			timer("flame_dungeon_5m_left_timer", 10*60)
		end
		
		when flame_dungeon_5m_left_timer.timer begin
			d.notice(string.format("Kalan s�re: %d dakika", 5))
			d.notice("Grup s�renin sonunda kaleden d��ar� ���nlan�r.")
			timer("flame_dungeon_1m_left_timer", 4*60)
		end
		
		when flame_dungeon_1m_left_timer.timer begin
			d.notice(string.format("Kalan s�re: %d dakika", 1))
			d.notice("Grup s�renin sonunda kaleden d��ar� ���nlan�r.")
			timer("flame_dungeon_0m_left_timer", 60)
		end
		
		when flame_dungeon_0m_left_timer.timer begin
			local setting = flame_dungeon.setting()
			d.notice("Zaman doldu!")
			d.notice("10 Saniye i�inde herkes ���nlanacak.")
			timer("exit_dungeon",10)
		end
 
		when 20385.chat." Am-heh Yuta��'n� canland�r" with npc.lock() begin
			local setting = flame_dungeon.setting()
			if d.getf("started") == 0 then
				d.setf("started",1)
				timer("flame_dungeon_45m_left_timer",15*60)
				d.notice("Kalan s�re: 60 dakika ")
				d.notice("Grup s�renin sonunda kaleden d��ar� ���nlan�r.")
				local pids = {party.get_member_pids()}
				local ticketGroup = {71175, 1}
				for i, pid in next, pids, nil do
					q.begin_other_pc_block(pid)
					local canPass = false
					for idx=1, table.getn(ticketGroup),2 do
						if pc.count_item(ticketGroup[idx]) >= ticketGroup[idx+1] then
							canPass = true
							pc.remove_item(ticketGroup[idx], ticketGroup[idx+1])
							break
						end
					end
					if not canPass then
						pc.warp(setting.outside_entry_pos[1]*100, setting.outside_entry_pos[2] * 100, 62)
					end
					q.end_other_pc_block()
				end
				d.setqf2("flame_dungeon","ticket_delete",1)
				d.setf("dungeon_enter",1)
				 
				party.setf("dungeon_index", d.get_map_index())
				d.setf("party_leader_pid", party.get_leader_pid())
			end
			if d.getf("level") < 7 then
				if d.getf("clear_count") == 6 then
					d.setf("level",7)
				else
					local rand = number(1,6)
					local setlev = 0
					d.setf("level",7)
					for i=1,50 do
						setlev = setlev + 1
						if setlev > 6 then
							setlev = 1
						end
						if not d.is_unique_dead("door"..setlev) then
							rand = rand - 1
							if rand == 0 then
								d.setf("level",setlev)
								d.setf("clear_count",d.getf("clear_count")+1)
								break
							end
						end
					end
				end
			end
			if d.getf("level") == 1 then
				say("G�rev: �eytanlar�n aras�na girin ve ordan galip[ENTER]ayr�l�n.")
				d.notice("G�rev: �eytanlar�n aras�na girin ve ordan galip ayr�l�n.")
				d.kill_unique("door1")
				d.kill_unique("idoor1")
				d.setf("level",11)
				d.regen_file ("data/dungeon/flame_dungeon/".."fd_a.txt")
			elseif d.getf("level") == 11 then
				say("�eytanlar hen�z t�m�yle ma�lup edilmedi.")
				say("Kalan: "..d.count_monster())
			elseif d.getf("level") == 2 then
					say("G�rev: Alt�n di�li �ark� bulun ve onunla �sfet[ENTER]Steli'ndeki gizli mekanizmay� harekete ge�irin.")
					d.notice("G�rev: Alt�n di�li �ark� bulun ve onunla �sfet")
					d.notice("Steli'ndeki gizli mekanizmay� harekete ge�irin.")
					d.spawn_mob(20386, setting.LEVEL2_STONE_pos[1], setting.LEVEL2_STONE_pos[2])
					d.kill_unique("door2")
					d.kill_unique("idoor2")
					d.set_regen_file("data/dungeon/flame_dungeon/".."fd_b.txt")
					d.setf("level",12)
				elseif d.getf("level") == 12 then
					say("�sfet Steli'ndeki gizli mekanizma hen�z")
					say("harekete ge�irilmedi.")
				elseif d.getf("level") == 3 then
					say("G�rev: �eytanlar�n aras�na girin ve ordan galip[ENTER]ayr�l�n.")
					d.notice("G�rev: �eytanlar�n aras�na girin ve ordan galip ayr�l�n.")
					d.kill_unique("door3")
					d.kill_unique("idoor3")
					d.setf("level",13)
                    local counter_13 = 180
					d.regen_file ("data/dungeon/flame_dungeon/".."fd_c.txt")
				elseif d.getf("level") == 13 then
					 say("�eytanlar hen�z t�m�yle ma�lup edilmedi.")
					say("Kalan: "..d.count_monster())
				elseif d.getf("level") == 4 then -- 474 178
					say("G�rev: Korun Koruyucusu olan �gnat�r'� ma�lup edin.")
					d.notice("G�rev: Korun Koruyucusu olan �gnat�r'� ma�lup edin.")
					d.setf("level",14)
					d.kill_unique("door4")
					d.kill_unique("idoor4")
					d.set_regen_file ("data/dungeon/flame_dungeon/".."fd_d.txt")
					d.spawn_mob(6051,setting.LEVEL4_TARGET_pos[1],setting.LEVEL4_TARGET_pos[2] )
				elseif d.getf("level") == 14 then
					say("�gnat�r hen�z ma�lup edilmedi.")
				elseif d.getf("level") == 5 then -- 510 355
					say("Hatas�z kul olmaz! Bu y�zden bilmeceyi dikkatlice")
					say("��z�n. G�rev tamamland���nda geri d�n�n.")
					d.notice("G�rev: Maat ta�lar�n� aray�n ve onlar� ")
					d.notice("s�ralamaya g�re �sfet'in yedi steline �ekip b�rak�n.")
					d.notice("Maat ta��n� yanl�� stele uygularsan�z k�r�l�r.")
					d.kill_unique("door5")
					d.kill_unique("idoor5")
					d.setf("level",15)
					d.set_regen_file ("data/dungeon/flame_dungeon/".."fd_e.txt")
					local vis = { 0,0,0,0,0,0,0}
					for i=1,7 do
						vis[i] = 0
					end
					for i = 1, 7 do
						local ran = number(1,7)
						local st = 0
						for j = 1, 50 do
							st = st + 1
							if st > 7 then
								st = 1
							end
							if vis[st] == 0 then
								ran = ran - 1
								if ran == 0 then
									vis[st] = 1
									d.set_unique("stone5_"..st, d.spawn_mob(20386, setting.LEVEL5_STONE_pos[i][1], setting.LEVEL5_STONE_pos[i][2]))
									break
								end
							end
						end
					end 
				elseif d.getf("level") == 15 then
					say("Hen�z yedi �sfet Steli yok edilmedi.")
				elseif d.getf("level") == 6 then
					say("Cehennem ate�inin metinini k�l edin. G�rev[ENTER]tamamland���nda geri d�n�n.")
					d.notice("G�rev: Cehennem ate�inin metinini ancak kavurucu s�caktan korkmayanlar yok edebilir.")
					d.setf("level",16)
					d.kill_unique("door6")
					d.kill_unique("idoor6")
					d.set_regen_file ("data/dungeon/flame_dungeon/".."fd_f.txt")
					d.spawn_mob(8057, setting.LEVEL6_TARGET_pos[1],setting.LEVEL6_TARGET_pos[2]) -- ?????? ??
				elseif d.getf("level") == 16 then
					say("Hen�z Cehennem ate�inin metini yok[ENTER]edilmedi.")
				elseif d.getf("level") == 7 then
					flame_dungeon.razador_kati()
				else
					say(" ")
				end
			npc.unlock()
		end
	 
		when kill with flame_dungeon.is_flamed(pc.get_map_index()) and d.getf("level") == 11 begin
			if d.getf("counter_11") == 0 then -- bug 1 sabanasd 20.12.2016 04:30
				d.notice("T�m �eytanlar ma�lup edildi.")
				d.notice("Am-heh Yuta��'na tekrar girin ve bir kader kilidi daha a��n.")
				flame_dungeon.level_clear()
			else
				d.setf("counter_11",d.getf("counter_11")-1)
			end
		end
 
		when kill with flame_dungeon.is_flamed(pc.get_map_index()) and d.getf("level") == 13 begin
			if d.getf("counter_13") == 0 then
				d.notice("T�m �eytanlar ma�lup edildi.")
				d.notice("Am-heh Yuta��'na tekrar girin ve bir kader kilidi daha a��n.")
				flame_dungeon.level_clear()
			else
				d.setf("counter_13",d.getf("counter_13")-1)
			end
		end
 
		when kill with flame_dungeon.is_flamed(pc.get_map_index()) and d.getf("level") == 12 begin
			local i = number(1, 100)
			if i == 1 then
				game.drop_item (30329, 1)
			end
		end
		when 20386.take with flame_dungeon.is_flamed(pc.get_map_index()) and item.vnum == 30329 and d.getf("level") == 12 begin
			local i = number(1, 5)
			if i == 1 then
				npc.purge()
				if item.get_vnum() == 30329 then
					item.remove()
				end
				d.notice("�sfet Steli yok edildi.")
				d.notice("Am-heh Yuta��'na tekrar girin ve bir kader kilidi daha a��n.")
				flame_dungeon.level_clear()
			else
				if item.get_vnum() == 30329 then
					item.remove()
				end
				say("Bu di�li �ark sahte. Ger�ek olan�[ENTER]bulana dek aramaya devam edin.")
			end
		end
 
		when kill with npc.get_race() == 6051 and flame_dungeon.is_flamed(pc.get_map_index()) and d.getf("level") == 14 begin
				d.notice("Korun Koruyucusu �gnat�r yok edildi.")
				d.notice("Am-heh Yuta��'na tekrar girin ve bir kader")
				d.notice("kilidi daha a��n.")
			flame_dungeon.level_clear()
		end
 
		when kill with flame_dungeon.is_flamed(pc.get_map_index()) and d.getf("level") == 15 begin
			local i = number(1, 30)
			if i == 1 then
				game.drop_item (30330, 1)
			end
		end
		
		when 20386.take with flame_dungeon.is_flamed(d.get_map_index()) and item.vnum == 30330 and d.getf("level") == 15 begin
			local setting = flame_dungeon.setting()
			if npc.get_vid() == d.get_unique_vid("stone5_1") then
				npc.purge()
				if item.get_vnum() == 30330 then
					item.remove()
				end
				say("�sfet Steli yok edildi.[ENTER]Maat Ta�lar�n� bulun ve di�er Stelleri yok edin.")
				d.setf("stonekill",2)
				if d.count_monster() < 100 then
					d.regen_file ("data/dungeon/flame_dungeon/".."fd_e.txt")
				end
			elseif npc.get_vid() == d.get_unique_vid("stone5_2") then 
				if d.getf("stonekill") == 2 then
					npc.purge()
					if item.get_vnum() == 30330 then
						item.remove()
					end
					say("�sfet Steli yok edildi.[ENTER]Maat Ta�lar�n� bulun ve di�er Stelleri yok edin.")
					d.setf("stonekill",3)
					if d.count_monster() < 100 then
						d.regen_file ("data/dungeon/flame_dungeon/".."fd_e.txt")
					end
				else
					if item.get_vnum() == 30330 then
						item.remove()
					end
					say("Yanl�� Stel'i se�tin. Do�rusunu bul.")
				end
			elseif npc.get_vid() == d.get_unique_vid("stone5_3") then
				if d.getf("stonekill") == 3 then
					npc.purge()
					if item.get_vnum() == 30330 then
						item.remove()
					end
					say("�sfet Steli yok edildi.[ENTER]Maat Ta�lar�n� bulun ve di�er Stelleri yok edin.")
					d.setf("stonekill",4)
					if d.count_monster() < 100 then
						d.regen_file ("data/dungeon/flame_dungeon/".."fd_e.txt")
					end
				else
					if item.get_vnum() == 30330 then
						item.remove()
					end
					say("Yanl�� Stel'i se�tin. Do�rusunu bul.")
				end
			elseif npc.get_vid() == d.get_unique_vid("stone5_4") then
				if d.getf("stonekill") == 4 then
					npc.purge()
					if item.get_vnum() == 30330 then
						item.remove()
					end
					say("�sfet Steli yok edildi.[ENTER]Maat Ta�lar�n� bulun ve di�er Stelleri yok edin.")
					d.setf("stonekill",5)
					if d.count_monster() < 100 then
						d.regen_file ("data/dungeon/flame_dungeon/".."fd_e.txt")
					end
				else
					if item.get_vnum() == 30330 then
						item.remove()
					end
					say("Yanl�� Stel'i se�tin. Do�rusunu bul.")
				end
			elseif npc.get_vid() == d.get_unique_vid("stone5_5") then
				if d.getf("stonekill") == 5 then
					npc.purge()
					if item.get_vnum() == 30330 then
						item.remove()
					end
					say("�sfet Steli yok edildi.[ENTER]Maat Ta�lar�n� bulun ve di�er Stelleri yok edin.")
					d.setf("stonekill",6)
					if d.count_monster() < 100 then
						d.regen_file ("data/dungeon/flame_dungeon/".."fd_e.txt")
					end
				else
					if item.get_vnum() == 30330 then
						item.remove()
					end
					say("Yanl�� Stel'i se�tin. Do�rusunu bul.")
				end
			elseif npc.get_vid() == d.get_unique_vid("stone5_6") then
				if d.getf("stonekill") == 6 then
					npc.purge()
					if item.get_vnum() == 30330 then
						item.remove()
					end
					say("�sfet Steli yok edildi.[ENTER]Maat Ta�lar�n� bulun ve son Steli yok edin.")
					d.setf("stonekill",7)
					if d.count_monster() < 100 then
						d.regen_file ("data/dungeon/flame_dungeon/".."fd_e.txt")
					end
				else
					if item.get_vnum() == 30330 then
						item.remove()
					end
					say("Yanl�� Stel'i se�tin. Do�rusunu bul.")
				end
			else
				if d.getf("stonekill") == 7 then
					npc.purge()
					if item.get_vnum() == 30330 then
						item.remove()
					end
					d.notice("�sfet Steli yok edildi.")
					d.notice("Am-heh Yuta��'na tekrar girin ve bir kader kilidi daha a��n.")
					flame_dungeon.level_clear()
				else
					if item.get_vnum() == 30330 then
						item.remove()
					end
					say("Yanl�� Stel'i se�tin. Do�rusunu bul.")
				end
			end
		end
 
		when kill with npc.get_race() == 8057 and flame_dungeon.is_flamed(d.get_map_index()) and d.getf("level") ==16 begin -- metin kesiliyor
			d.notice("Cehennem ate�inin metini yok edildi.")
			d.notice("Am-heh Yuta��'na tekrar gidin ve bir kader kilidi daha a��n.")
			flame_dungeon.level_clear()
		end
 
		when kill with npc.get_race() == 6091 and flame_dungeon.is_flamed(d.get_map_index()) and d.getf("level") ==17 begin -- razad�r kesildi
			notice_all("Razador "..pc.get_name().." ve grubu taraf�ndan yok edildi.")
			d.notice("Razad�r yok edildi.")
			d.notice("T�m sava���lar bir dakika i�erisinde Ejderha Tap�na��'ndan d��ar� ���nlanacak.")
			timer("exit_dungeon", 60)
			flame_dungeon.level_clear()
			if party.is_party() then
				party.setf("flame_dungeon_boss_kill_count", 1)
			end
			 
		end
		 
		when exit_dungeon.timer begin
			local setting = flame_dungeon.setting()
			flame_dungeon.clear_timer(d.get_map_index())
			d.set_warp_location(62, setting.outside_entry_pos[1] , setting.outside_entry_pos[2])
			d.exit_all()
			d.setf("party_leader_pid", 0)
		end
	end
end