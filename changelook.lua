quest changelook begin
	state start begin
		when 20406.chat."Yans�tma" begin
			say_title(mob_name(20406))
			say("")
			say("Yans�tma, ekipman�n�n g�r�n�m� sonsuza dek")
			say("de�i�tirmeni sa�lar.Ancak etkisi ekipman�n")
			say("seviyesiyle s�n�rl�d�r ve ekledi�in yans�tma")
			say("nesne geli�tirildi�inde yok olur.Devam et?")
			say("")
			local confirm = select("Evet.", "Hay�r")
			if confirm == 2 then
				return
			end
			
			setskin(NOWINDOW)
			pc.open_changelook(true)
		end
	end
end