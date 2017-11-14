quest sash begin
	state start begin
		when 20406.chat."Bir omuz ku�a�� nedir?" begin
			say_title(mob_name(20406))
			say("")
			say("Omuz ku�a�� sana iki imkan sa�lar:")
			say("Kombinasyon ve emi�.")
			say("")
			say("Kombinasyon ayn� derecedeki iki ku�akla")
			say("ger�ekle�tirilebilir. Kombine edilen iki ku�ak")
			say("daha de�erli bir ku�ak meydana getirir.")
			say("")
			say("Emi� i�leminde bir silah veya z�rh �zerinde")
			say("bulunan bonuslar")
			say("�e�itli oranlarla omuz ku�a��na aktar�l�r.")
			say("")
			say("Emi� oran� (%) ku�a��n derecesine ba�l�d�r. Bonus")
			say("i�lemi i�in se�ilen silah ve z�rh geri")
			say("d�nd�r�lemez �ekilde yok edilir.")
			say("")
		end
		
		when 20406.chat."Kombinasyon" begin
			say_title(mob_name(20406))
			say("")
			say("�ki ku�a�� kombine mi etmek istiyorsun?")
			say("")
			local confirm = select("Evet", "Hay�r")
			if confirm == 2 then
				return
			end
			
			setskin(NOWINDOW)
			pc.open_sash(true)
		end
		
		when 20406.chat."Bonus Emi�i" begin
			say_title(mob_name(20406))
			say("")
			say("Silah veya z�rh�ndan bonus mu emmek istersin?")
			say("")
			local confirm = select("Evet", "Hay�r")
			if confirm == 2 then
				return
			end
			
			setskin(NOWINDOW)
			pc.open_sash(false)
		end
	end
end