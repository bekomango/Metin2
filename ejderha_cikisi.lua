-----------------------------------------------------------------
-- Sancak Server Files - Developer By: Mustafa �ZG�R {-Shark-} 
-- S-Ultimate Serileri
-- Destek Skype: sancakcf
-----------------------------------------------------------------
quest ejderha_cikis begin
state start begin
when 30121.chat."Bu b�lgeden ��kmak istiyorum! " with pc.get_map_index() == 79 begin
		say_title("Sura Ruhu:")
		say("")
		say("Seni ma�aran�n giri�ine g�t�rece�im. ")
		say("")
		local s = select("Olur. ","Hay�r, ben burada kalaca��m. ")
		if s == 2 then
		return
		end
		pc.warp(180100,1220400)
		end
		end
		end