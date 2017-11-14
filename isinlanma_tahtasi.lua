quest teleport begin
	state start begin
		when login begin
			cmdchat("teleport_q "..q.getcurrentquestindex())
		end
		when button or info begin
			local idx = getinput("teleportidx")
			if idx == "1" then
				syschat("Joan B�lgesine I��nlan�yorsun (Sar� Krall�k)")
				pc.warp(63800,166400)
			elseif idx == "2" then
				syschat("Bokjung B�lgesine I��nlan�yorsun (Sar� Krall�k)")
				pc.warp(145500,240000)
			elseif idx == "3" then
				syschat("Waryong B�lgesine I��nlan�yorsun (Sar� Krall�k Lonca B�lgesi)")
				pc.warp(221900,9200)
			elseif idx == "4" then
				syschat("Songpa B�lgesine I��nlan�yorsun (Sar� Krall�k Lonca B�lgesi)")
				pc.warp(204800,204800)
			elseif idx == "5" then
				syschat("Pyungmoo B�lgsine I��nlan�yorsun (Mavi Krall�k)")
				pc.warp(959900,269200)
			elseif idx == "6" then
				syschat("Bakra B�lgesine I��nlan�yorsun (Mavi Krall�k)")
				pc.warp(863900,246000)
			elseif idx == "7" then
				syschat("Imha B�lgesine I��nlan�yorsun (Mavi Krall�k Lonca B�lgesi)")
				pc.warp(271800,13000)
			elseif idx == "8" then
				syschat("Daeyami B�lgesine I��nlan�yorsun (Mavi Krall�k Lonca B�lgesi)")
				pc.warp(204800,204800)
			elseif idx == "9" then
				syschat("Yongan B�lgesine I��nlan�yorsun (K�rm�z� Krall�k)")
				pc.warp(474300,954800)
			elseif idx == "10" then
				syschat("Jayang B�lgesine I��nlan�yorsun (K�rm�z� Krall�k)")
				pc.warp(353100,882900)
			elseif idx == "11" then
				syschat("Jungrang B�lgesine I��nlan�yorsun (K�rm�z� Krall�k Lonca B�lgesi)")
				pc.warp(135600,4300)
			elseif idx == "12" then
				syschat("Miryang B�lgesine I��nlan�yorsun (K�rm�z� Krall�k Lonca B�lgesi)")
				pc.warp(204800,204800)
			elseif idx == "13" then
				syschat("Seungryong Vadisine I��nlan�yorsun (Tarafs�z B�lge)")
				if pc.get_empire() == 1 then
					pc.warp(402100,673900)
				elseif pc.get_empire() == 2 then
					pc.warp(270400,739900)
				elseif pc.get_empire() == 3 then
					pc.warp(321300,808000)
				end
			elseif idx == "14" then		
				syschat("Yongbi ��l�ne I��nlan�yorsun (Tarafs�z B�lge)")
				if pc.get_empire() == 1 then
					pc.warp(217800,627200)
				elseif pc.get_empire() == 2 then
					pc.warp(221900,502700)
				elseif pc.get_empire() == 3 then
					pc.warp(344000,502500)
				end
			elseif idx == "15" then
				syschat("Sohan Da��na I��nlan�yorsun (Tarafs�z B�lge)")
				if pc.get_empire() == 1 then
					pc.warp(434200,290600)
				elseif pc.get_empire() == 2 then
					pc.warp(375200,174900)
				elseif pc.get_empire() == 3 then
					pc.warp(491800,173600)
				end
			elseif idx == "16" then
				syschat("Hwang Tap�na��na I��nlan�yorsun (Tarafs�z B�lge)")
				pc.warp(553700,145000)
			elseif idx == "17" then	
				syschat("Doyyumhwan'a I��nlan�yorsun (Tarafs�z B�lge)")
				if pc.get_empire() == 1 then
					pc.warp(599400,756300)
				elseif pc.get_empire() == 2 then
					pc.warp(597800,622200)
				elseif pc.get_empire() == 3 then
					pc.warp(730700,689800)
				end
			elseif idx == "18" then
				syschat("Y�lan Vadisine I��nlan�yorsun (Tarafs�z B�lge)")
				pc.warp(1059000,726200)
			elseif idx == "19" then
				syschat("Devler Diyar�na I��nlan�yorsun (Tarafs�z B�lge)")
				pc.warp(828300,763500)
			elseif idx == "20" then
				syschat("Hayalet Ormana I��nlan�yorsun (Tarafs�z B�lge)")
				pc.warp(288700,5700)
			elseif idx == "21" then	
				syschat("K�z�l Ormana I��nlan�yorsun (Tarafs�z B�lge)")
				pc.warp(1119900,70800)
			elseif idx == "22" then
				if pc.get_level() < 90 then
					syschat(string.format("Seviyeniz Yeterli De�il. Gereken Seviye %s",90))
					return
				end
				syschat("Ejderha Ate�i Burnuna I��nlan�yorsun (Tarafs�z B�lge)")
				pc.warp(1104300,1788500)
			elseif idx == "23" then
				if pc.get_level() < 90 then
					syschat(string.format("Seviyeniz Yeterli De�il. Gereken Seviye %s",90))
					return
				end
				syschat("Nefrit K�rfezine I��nlan�yorsun (Tarafs�z B�lge)")
				pc.warp(1086900,1655800)
			elseif idx == "24" then
				if pc.get_level() < 90 then
					syschat(string.format("Seviyeniz Yeterli De�il. Gereken Seviye %s",90))
					return
				end
				syschat("Y�ld�r�m Da�lar�na I��nlan�yorsun (Tarafs�z B�lge)")
				pc.warp(1134500,1654600)
			elseif idx == "25" then
				if pc.get_level() < 90 then
					syschat(string.format("Seviyeniz Yeterli De�il. Gereken Seviye %s",90))
					return
				end
				syschat("Gautama U�urumuna I��nlan�yorsun (Tarafs�z B�lge)")
				pc.warp(1226300,1681100)
			elseif idx == "26" then
				syschat("Normal Maymun Zindan�na I��nlan�yorsun (Tarafs�z B�lge)")
				pc.warp(135200,652500)
			elseif idx == "27" then
				syschat("Zor Maymun Zindan�na I��nlan�yorsun (Tarafs�z B�lge)")
				pc.warp(135200,730000)
			elseif idx == "28" then
				syschat("�r�mcek Zindan� (1)'e I��nlan�yorsun (Tarafs�z B�lge)")
				pc.warp(60000,496000)
			elseif idx == "29" then
				syschat("�r�mcek Zindan� (2)'ye I��nlan�yorsun (Tarafs�z B�lge)")
				pc.warp(704100,464100)
			elseif idx == "30" then
				syschat("�r�mcek Zindan� (3)'e I��nlan�yorsun (Tarafs�z B�lge)")
				pc.warp(51200,563200)
			elseif idx == "31" then
				syschat("�eytan Kulesine I��nlan�yorsun (Tarafs�z B�lge)")
				pc.warp(590500,110500)
			elseif idx == "32" then
				syschat("�eytan Mezarl��� Giri�ine I��nlan�yorsun (Tarafs�z B�lge)")
				pc.warp(591300,99500)
			elseif idx == "33" then
				syschat("S�rg�n Ma�aras� Giri�ine I��nlan�yorsun (Tarafs�z B�lge)")
				pc.warp(284400,810700)
			elseif idx == "34" then
				syschat("K�rm�z� Ejderha Kalesi Giri�ine I��nlan�yorsun (Tarafs�z B�lge)")
				pc.warp(597600,706900)
			elseif idx == "35" then
				syschat("Nemerenin G�zetleme Kulesi Giri�ine I��nlan�yorsun (Tarafs�z B�lge)")
				pc.warp(432792,165998)
			elseif idx == "36" then
				syschat("Meley �ni Giri�ine I��nlan�yorsun (Tarafs�z B�lge)")
				pc.warp(597100,698900)
			elseif idx == "37" then
				if pc.get_level() < 95 then
					syschat(string.format("Seviyeniz Yeterli De�il. Gereken Seviye %s",95))
					return
				end
				syschat("Ochao Tap�na�� Giri�ine I��nlan�yorsun (Tarafs�z B�lge)")
				pc.warp(1277900,1734700)
			elseif idx == "38" then
				syschat("Greenmont B�lgesine I��nlan�yorsun (Ortak B�lge)")
				pc.warp(2159800,2533100)
			else
				syschat("Bilinmeyen bir haritaya ���nlanmaya �al���yorsun.")
			end
		end
	end
end
