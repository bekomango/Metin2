quest dragonlair_ranking begin
	state start begin
		when login or levelup with pc.get_level() >= 75 begin
			send_letter("Ejderha Avc�lar� S�ralamas� ")
		end
		when button or info begin
			say_title("Ejderha Bek�isi Jaharr ")
			say("")
			say("Ejderha Bek�isi Jaharr seni ar�yor onun yan�na gitmelisin. ")
			local v = find_npc_by_vnum(20421)
			if 0!=v then
				target.vid(20421)
			end
			set_state(information)
		end
	end
	state information begin
		when 20421.chat."Ejderha Avc�lar� " begin
			say_title("Ejderha Bek�isi Jaharr: ")
			say("")
			say("Art�k 75. seviyeye ula�t�n ejderha avc�s� olmaya ")
			say("hak kazand�n. Her Mavi ejderha �ld�r���nde 1 puan ")
			say("kazanacaks�n. Ve toplad���n her puan seni s�ralamada ")
			say("tutacak.")
			say_reward("Ejderha avc�lar� s�ralamas�n� ba�latmak istiyor musun? ")
			local s = select("Evet, istiyorum.","Hay�r, istemiyorum. ")
			if s == 1 then
				say_title("Ejderha Bek�isi Jaharr: ")
				say("")
				say_reward("Ejderha avc�lar� s�ralamas� ba�lad�. ")
				set_state(farming)
			else
			end
		end
	end
	state farming begin
		when 20421.chat."Ejderha Avc�lar� S�ralamas� " begin
			say_title("Ejderha Bek�isi Jaharr: ")
			say("")
			say("S�ralamay� �imdi a�mak istiyor musun? ")
			local s = select("Evet, istiyorum.","Hay�r, istemiyorum. ")
			if s == 1 then
				setskin(NOWINDOW)
				DragonLair.OpenRanking()
			else
			end
		end
	end
end