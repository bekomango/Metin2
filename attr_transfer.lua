quest attr_transfer begin
	state start begin
		when 20406.chat."Kost�m Bonus Transfer" begin
			say_title(mob_name(20406))
			say("")
			say("2. kost�m�ndeki efsunlar� 1. kost�m�ne")
			say("aktarabilirsin.")
			say("")
			say("Bu i�lemi yapabilmek i�in �nce")
			say("transfer nesnesini pencereye eklemelisin.")
			say("")
			say("2. kost�m yok edilecektir..")
			say("")
			say("Devam etmek istiyor musun ?")
			say("")
			local confirm = select("Evet", "Hay�r")
			if confirm == 2 then
				return
			end
			
			setskin(NOWINDOW)
			command("attrtransfer open")
		end
	end
end