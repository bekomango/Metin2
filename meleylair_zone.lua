quest meleylair_zone begin
	state start begin
		when 20419.chat."�n'den Ayr�l! " with MeleyLair.IsMeleyMap() begin
			say_title(mob_name(20419))
			say("")
			say("Ayr�lmak �stiyor musun? ")
			say("")
			local agree = select("Evet ", "Hay�r ")
			if agree == 1 then
				MeleyLair.Leave()
			else
				setskin(NOWINDOW)
				return
			end
		end
		
		when login with MeleyLair.IsMeleyMap() begin
			MeleyLair.Check()
		end
		
		when 20420.click with MeleyLair.IsMeleyMap() begin
			say_title(mob_name(20420))
			say("")
			local menu = select("�d�l� Se�. ", "Kapat ")
			if menu == 1 then
				say_title(mob_name(20420))
				say("")
				if not MeleyLair.CanGetReward() then
					say("�ok so�uk ve yanl�z. Benim gelecekteki kocam nerede? ")
				else
					say("Ejderhalar krali�esi meley'i yendin. Bir �d�l Se�; ")
					say("�d�ller: ")
					local reward_menu = select("Krali�e Meley'in Sand��� ", "Ejderha Bek�isi Sand��� ", "�ptal ")
					if reward_menu == 1 then
						say_title(mob_name(20420))
						say("")
						say("Krali�e Meley'in Sand���n� almak istiyor musun? ")
						local agree = select("Evet ", "Hay�r ")
						if agree == 1 then
							MeleyLair.Reward(reward_menu)
							say_title(mob_name(20420))
							say("")
							say("��te �d�l�n! ")
						else
							setskin(NOWINDOW)
							return
						end
					elseif reward_menu == 2 then
						say_title(mob_name(20420))
						say("")
						say("Ejderha Bek�isi Sand���n� almak istiyor musun? ")
						local agree = select("Evet ", "Hay�r ")
						if agree == 1 then
							MeleyLair.Reward(reward_menu)
							say_title(mob_name(20420))
							say("")
							say("��te �d�l�n! ")
						else
							setskin(NOWINDOW)
							return
						end
					else
						setskin(NOWINDOW)
						return
					end
				end
			else
				setskin(NOWINDOW)
				return
			end
		end
		
		when 20388.click."" begin
		end
    end
end