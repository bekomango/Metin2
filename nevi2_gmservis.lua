quest gmservis begin
	state start begin
		when 40002.use begin
		if pc.is_gm() == false then
			say_title("O painel de administra��o est� bloqueado.")
			say("Voc� n�o tem acesso ao painel de administra��o ...")
			return
		end
		say_title("Painel de Gerenciamento ")
		local sec123 = select("Eventos","Open Droplets","An�ncios de lan�amento ","Cancelar")
			if sec123 == 1 then
					local event = select("Ramazan Etkinli�i","Ay I���� Etkinli�i ","Kost�m Etkinli�i","(ETP) Etkinli�i","Binek ve Par�omen Etkinli�i","Futbol Topu Etkinli�i","Bulmaca Kutusu Etkinli�i","Kapat ")
					if event == 1 then
					local event2 = select("Ramazan Etkinli�i ba�lat","Bereket Meyvesi �d�lleri","Ramazan etkinli�i bitir","Tabak drobu a� ","Hi�bir �ey")
					if event2 == 1 then
					notice_all("Ramazan etkinlikleri ba�lad�!")
					notice_all("Tarih�i'yi ziyaret et, Niyetli Vatanda�'a bir iyilik yap ya da")
					notice_all("yarat�klar� �ld�r�p simitleri al!")
					game.set_event_flag("ramazan",1)
					elseif event2 == 2 then
					notice_all("Bereket meyvelerini Tarih�i'ye g�t�r!")
					notice_all("�d�l�n� al!")
					game.set_event_flag("ramazan",2)
					elseif event2 == 3 then
					notice_all("Ramazan etkinlikleri sona erdi.")
					game.set_event_flag("ramazan",0)
					elseif event2 == 4 then
					game.set_event_flag("tabak",1)
					notice_all("Ba��� Taba�� d���rmek i�in Metin Ta�lar�n� ve patronlar� yok et!")
					return
					else
					return
					end
					elseif event == 2 then
					local panpa05 = select("Ay I���� etkinli�i ba�lat","Ay I���� etkinli�i bitir","Vazge� ")
					if panpa05 == 1 then
					notice_all("Ay I���� Sand��� etkinli�i ba�lad�!")
					notice_all("Ay I���� Sand���'n� t�m slotlardan ele ge�irebilirsin!")
					game.set_event_flag("ayisigi",1)
					elseif panpa05 == 2 then
					game.set_event_flag("ayisigi",0)
					notice_all("Ay I���� Sand��� etkinli�i sona erdi.")
					elseif panpa05 == 3 then
					return
					end
					elseif event == 3 then
					local event5 = select("Kost�m drop a� ","Kost�m drop kapat","Hi�bir �ey")
					if event5 == 1 then
					notice_all("Metin Ta�lar�n� yok et ve Olimpiyat Kost�m� kazan!")
					game.set_event_flag("dressup",1)
					elseif event5 == 2 then
					notice_all("Kost�m eventi bitmi�tir.")
					game.set_event_flag("dressup",0)					
					elseif event5 == 3 then			
					return
					end
					elseif event == 4 then
					local panpa = select("ETP etkinli�i ba�lat","ETP etkinli�i bitir","Vazge� ")
					if panpa == 1 then
					notice_all("ETP etkinli�i ba�lad�!")
					notice_all("ETP'yi +30 level ve leveline uygun t�m slotlardan ele ge�irebilirsin!")
					game.set_event_flag("etp_dusur",1)
					elseif panpa == 2 then
					game.set_event_flag("etp_dusur",0)
					notice_all("ETP etkinli�i sona erdi.")
					elseif panpa == 3 then
					return
					end
					elseif event == 5 then
					local panpa09 = select("Binek ve Par�omen ba�lat","Binek ve Par�omen bitir","Vazge� ")
					if panpa09 == 1 then
					notice_all("Binek ve Par�omen etkinli�i ba�lad�!")
					notice_all("Binek ve Par�omen leri t�m slotlardan ele ge�irebilirsin!")
					game.set_event_flag("binekveparsomen",1)
					elseif panpa09 == 2 then
					game.set_event_flag("binekveparsomen",0)
					notice_all("Binek ve Par�omen etkinli�i sona erdi.")
					elseif panpa09 == 3 then
					return
					end
					elseif event == 6 then
					local panpa5 = select("Futbol Topu etkinli�i ba�lat","Futbol Topu etkinli�i bitir","Hi�bir �ey")
					if panpa5 == 1 then				
					game.set_event_flag("futboltopu",1)
					notice_all("Futbol Topu etkinli�i ba�lad�!")
					notice_all("Futbol Topu'nu t�m slotlardan ele ge�irebilirsin!")
					elseif panpa5 == 2 then
					game.set_event_flag("futboltopu",0)
					notice_all("Futbol Topu etkinli�i sona erdi.")
					elseif panpa5 == 3 then
					return
					end
					elseif event == 7 then
					local panpa99 = select("Bulmaca Kutusu etkinli�i ba�lat","Bulmaca Kutusu etkinli�i bitir","Hi�bir �ey")
					if panpa99 == 1 then				
					game.set_event_flag("kids_day_quiz",1)
					notice_all("Bulmaca Kutusu etkinli�i ba�lad�!")
					notice_all("Bulmaca Kutusunu t�m slotlardan ele ge�irebilirsin!")
					elseif panpa99 == 2 then
					game.set_event_flag("kids_day_quiz",0)
					notice_all("Bulmaca Kutusu etkinli�i sona erdi.")
					elseif panpa99 == 3 then
					return
					end
					elseif event == 8 then
					return
				elseif s == 8 then
					return
					end
					end
			if sec123 == 2 then	
			say_title("Y�netim Paneli  ")
			say("Droplar� otomatik olarak ; ")
			say("ba�latmak istedi�ine eminmisin? ")
			say_yellow("Yang Drop ; %100")
			say_yellow("Exp Drop ; %100")
			local dr1 = select("Evet", "Hay�r")
			if dr1 == 1 then	
			__give_empire_priv(0, 2, 100, 60*60*24*15) 
			__give_empire_priv(0, 4, 100, 60*60*24*15)	
			end
			if dr1 == 2 then
			return
			end
			end
			if sec123 == 3 then		
			say_title("Y�netim Paneli  ")
			say("Duyurular� otomatik ba�latmak istedi�ine eminmisin ")
			local d1 = select("Evet", "Hay�r")
			if d1 == 1 then
			clear_server_timer("auto_notice")
			server_loop_timer("auto_notice",1)
			chat("Duyurular zaman� gelince ba�layacak.")						
			end
			if d1 == 2 then
			return
			end
			end	
			if sec123 == 4 then	
			return				
			end
			end
		when auto_notice.server_timer begin
		local time = os.date("%X")
		local day = os.date("%w")
			if time == "00:00:00" or time == "04:00:00" or time == "08:00:00" or time == "12:00:00" or time == "16:00:00" or time == "19:59:00" then
			notice_all("Hesap g�venli�iniz bizler i�in �ok �nemli ve bunun i�in!")
			notice_all("�temlerinizi ruha ba�lay�p, �ifrelerinizi de�i�tirin.")
			notice_all("www.Nevi2.com harici bilmedi�iniz hi� bir siteye girmeyiniz!")
			notice_all("Videon var Ep kampanyas� var gibi s�zlere aldanmay�n�z!")
			end
			if time == "01:00:00" or time == "05:00:00" or time == "09:00:00" or time == "13:00:00" or time == "16:59:00" or time == "20:59:20" then
			notice_all("Hesap g�venli�iniz bizler i�in �ok �nemli ve bunun i�in!")
			notice_all("�temlerinizi ruha ba�lay�p, �ifrelerinizi de�i�tirin.")
			notice_all("www.Nevi2.com harici bilmedi�iniz hi� bir siteye girmeyiniz!")
			notice_all("Videon var Ep kampanyas� var gibi s�zlere aldanmay�n�z!")
			end
			if time == "02:00:00" or time == "06:00:00" or time == "10:00:00" or time == "14:00:00" or time == "17:59:00" or time == "21:59:00" then
			notice_all("Nevi2 resmi facebook sayfam�z sizlerle!")
			notice_all("https://www.facebook.com/Nevi2com Sayfam�z� Takip Ediniz.")
			notice_all("Sayfam�z�n hayran� ol, payla��mlar� ka��rma! ")
			end
			if time == "03:00:00" or time == "07:00:00" or time == "11:00:00" or time == "14:59:00" or time == "19:00:20" or time == "22:59:00" then
			notice_all("Hesap g�venli�iniz bizler i�in �ok �nemli ve bunun i�in!")
			notice_all("�temlerinizi ruha ba�lay�p, �ifrelerinizi de�i�tirin.")
			notice_all("www.Nevi2.com harici bilmedi�iniz hi� bir siteye girmeyiniz!")
			notice_all("Videon var Ep kampanyas� var gibi s�zlere aldanmay�n�z!")
			end
			end
			when login with pc.is_gm() begin
			chat("Bulundu�un map index: "..pc.get_map_index().."")
			chat("CH1 Ejderha Odas� �ifresi: "..game.get_event_flag("ejder_sifresi1").."")
			chat("CH2 Ejderha Odas� �ifresi: "..game.get_event_flag("ejder_sifresi2").."")
		end
	end
end	