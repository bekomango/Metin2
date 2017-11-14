quest time_weapon begin
	state start begin
		when login with game.get_event_flag("time_weapon_activate") == 1 begin
			send_letter("Gen� kahramanlar i�in silahlar ")
		end
		
		when button or info begin
			say_title("Gen� kahramanlar i�in silahlar ")
			say("")
			say("Gen� kahraman en cesur sava��� olarak nam sald�n ")
			say("ama hala tecr�be ve g�ce ihtiyac�n var. Ejderha ")
			say("Tanr�s� bu krall���n umudu olarak seni koruyup ")
			say("kollayacak ve sana maceralar�nda belli bir s�re ")
			say("kullanabilece�in bir silah sunacak. ")
			wait()
			if pc.get_job() == 0 then
				say_title("Silah�n� se�	")
				say("")
				say("Silah�n� se�: ")
				local s = select("Durendal'�n �ntikamc�s� (Tek El)","Ork Kasab� (�ift El) ")
				if s == 1 then
					pc.give_item2_select("21900", 1)
					item.set_attribute(0, 72, 10)
					say_title("Ba�ar�l�! ")
					say(" ")
					say_reward("Yeni Silah�n: ")
					say_item_vnum(21900)
					set_state(lv10)
				elseif s == 2 then
					pc.give_item2_select("21903", 1)
					item.set_attribute(0, 72, 10)
					say_title("Ba�ar�l�! ")
					say("")
					say_reward("Yeni Silah�n: ")
					say_item_vnum(21903)
					set_state(lv10)
				end
			elseif pc.get_job() == 1 then
				say_title("Silah�n� se� ")
				say("")
				say("Silah�n� se�: ")
				local s = select("Katliam K�rdan� (B��ak)","Hayal Kapan� (Yay) ")
				if s == 1 then
					pc.give_item2_select("21901", 1)
					item.set_attribute(0, 72, 10)
					say_title("Ba�ar�l�! ")
					say("")
					say_reward("Yeni Silah�n: ")
					say_item_vnum(21901)
					set_state(lv10)
				elseif s == 2 then
					pc.give_item2_select("21902", 1)
					item.set_attribute(0, 72, 10)
					say_title("Ba�ar�l�! ")
					say("")
					say_reward("Yeni Silah�n: ")
					say_item_vnum(21902)
					set_state(lv10)
				end
			elseif pc.get_job() == 2 then
				pc.give_item2_select("21900", 1)
				item.set_attribute(0, 72, 10)
				say_title("Ba�ar�l�! ")
				say("")
				say_reward("Yeni Silah�n: ")
				say_item_vnum(21900)
				set_state(lv10)
			elseif pc.get_job() == 3 then
				say_title("Silah�n� se� ")
				say("")
				say("Silah�n� se�: ")
				local s = select("Elf �p�c��� (�an)","Dul �ntikamc� (Yelpaze) ")
				if s == 1 then
					pc.give_item2_select("21904", 1)
					item.set_attribute(0, 72, 10)
					say_title("Ba�ar�l�! ")
					say("")
					say_reward("Yeni Silah�n: ")
					say_item_vnum(21904)
					set_state(lv10)
				elseif s == 2 then
					pc.give_item2_select("21905", 1)
					item.set_attribute(0, 72, 10)
					say_title("Ba�ar�l�! ")
					say("")
					say_reward("Yeni Silah�n: ")
					say_item_vnum(21905)
					set_state(lv10)
				end
			elseif pc.get_job() == 4 then
				pc.give_item2_select("21906", 1)
				item.set_attribute(0, 72, 10)
				say_title("Ba�ar�l�! ")
				say("")
				say_reward("Yeni Silah�n: ")
				say_item_vnum(21906)
				set_state(lv10)
			end
		end
	end
	state lv10 begin
		when login or levelup begin
			if pc.get_level() >= 10 then
				send_letter("Gen� kahramanlar i�in silah ")
			end
		end
		
		when button or info begin
			say_title("Gen� kahramanlar i�in silahlar ")
			say("")
			say("Gen� kahraman en cesur sava��� olarak nam sald�n ")
			say("ama hala tecr�be ve g�ce ihtiyac�n var. Ejderha ")
			say("Tanr�s� bu krall���n umudu olarak seni koruyup ")
			say("kollayacak ve sana maceralar�nda belli bir s�re ")
			say("kullanabilece�in bir silah sunacak. ")
			wait()
			if pc.get_job() == 0 then
				say_title("Silah�n� se� ")
				say("")
				say("Silah�n� se�: ")
				local s = select("Kavurucu �fke (Tek El)","Obsidyen �ekici (�ift El) ")
				if s == 1 then
					pc.give_item2_select("21910", 1)
					item.set_attribute(0, 72, 10)
					say_title("Ba�ar�l�! ")
					say("")
					say_reward("Yeni Silah�n: ")
					say_item_vnum(21910)
					set_state(lv20)
				elseif s == 2 then
					pc.give_item2_select("21913", 1)
					item.set_attribute(0, 72, 10)
					say_title("Ba�ar�l�! ")
					say("")
					say_reward("Yeni Silah�n: ")
					say_item_vnum(21913)
					set_state(lv20)
				end
			elseif pc.get_job() == 1 then
				say_title("Silah�n� se� ")
				say("")
				say("Silah�n� se�: ")
				local s = select("Elf Pen�esi (B��ak)","A��t (Yay) ")
				if s == 1 then
					pc.give_item2_select("21911", 1)
					item.set_attribute(0, 72, 10)
					say_title("Ba�ar�l�! ")
					say("")
					say_reward("Yeni Silah�n: ")
					say_item_vnum(21911)
					set_state(lv20)
				elseif s == 2 then
					pc.give_item2_select("21912", 1)
					item.set_attribute(0, 72, 10)
					say_title("Ba�ar�l�! ")
					say("")
					say_reward("Yeni Silah�n: ")
					say_item_vnum(21912)
					set_state(lv20)
				end
			elseif pc.get_job() == 2 then
				pc.give_item2_select("21910", 1)
				item.set_attribute(0, 72, 10)
				say_title("Ba�ar�l�! ")
				say("")
				say_reward("Yeni Silah�n: ")
				say_item_vnum(21910)
				set_state(lv20)
			elseif pc.get_job() == 3 then
				say_title("Silah�n� se� ")
				say("")
				say("Silah�n� se�: ")
				local s = select("Valk�r �a�r�s� (�an)","Sessiz Lanet (Yelpaze) ")
				if s == 1 then
					pc.give_item2_select("21914", 1)
					item.set_attribute(0, 72, 10)
					say_title("Ba�ar�l�! ")
					say("")
					say_reward("Yeni Silah�n: ")
					say_item_vnum(21914)
					set_state(lv20)
				elseif s == 2 then
					pc.give_item2_select("21915", 1)
					item.set_attribute(0, 72, 10)
					say_title("Ba�ar�l�! ")
					say("")
					say_reward("Yeni Silah�n: ")
					say_item_vnum(21915)
					set_state(lv20)
				end
			elseif pc.get_job() == 4 then
				pc.give_item2_select("21916", 1)
				item.set_attribute(0, 72, 10)
				say_title("Ba�ar�l�! ")
				say("")
				say_reward("Yeni Silah�n: ")
				say_item_vnum(21916)
				set_state(lv20)
			end
		end
	end			
	state lv20 begin
		when login or levelup begin
			if pc.get_level() >= 20 then
				send_letter("Gen� kahramanlar i�in silah ")
			end
		end
		
		when button or info begin
			say_title("Gen� kahramanlar i�in silahlar ")
			say("")
			say("Gen� kahraman en cesur sava��� olarak nam sald�n ")
			say("ama hala tecr�be ve g�ce ihtiyac�n var. Ejderha ")
			say("Tanr�s� bu krall���n umudu olarak seni koruyup ")
			say("kollayacak ve sana maceralar�nda belli bir s�re ")
			say("kullanabilece�in bir silah sunacak. ")
			wait()
			if pc.get_job() == 0 then
				say_title("Silah�n� se� ")
				say("")
				say("Silah�n� se�: ")
				local s = select("Kader K�l�c� (Tek El)","Kan Anla�mas� (�ift El) ")
				if s == 1 then
					pc.give_item2_select("21920", 1)
					item.set_attribute(0, 72, 10)
					say_title("Ba�ar�l�! ")
					say("")
					say_reward("Yeni Silah�n: ")
					say_item_vnum(21920)
					set_state(lv30)
				elseif s == 2 then
					pc.give_item2_select("21923", 1)
					item.set_attribute(0, 72, 10)
					say_title("Ba�ar�l�! ")
					say("")
					say_reward("Yeni Silah�n: ")
					say_item_vnum(21923)
					set_state(lv30)
				end
			elseif pc.get_job() == 1 then
				say_title("Silah�n� se� ")
				say("")
				say("Silah�n� se�: ")
				local s = select("R�zgar �i�i (B��ak)","Ejderha Nefesi (Yay) ")
				if s == 1 then
					pc.give_item2_select("21921", 1)
					item.set_attribute(0, 72, 10)
					say_title("Ba�ar�l�! ")
					say("")
					say_reward("Yeni Silah�n: ")
					say_item_vnum(21921)
					set_state(lv30)
				elseif s == 2 then
					pc.give_item2_select("21922", 1)
					item.set_attribute(0, 72, 10)
					say_title("Ba�ar�l�! ")
					say("")
					say_reward("Yeni Silah�n: ")
					say_item_vnum(21922)
					set_state(lv30)
				end
			elseif pc.get_job() == 2 then
				pc.give_item2_select("21920", 1)
				item.set_attribute(0, 72, 10)
				say_title("Ba�ar�l�! ")
				say("")
				say_reward("Yeni Silah�n: ")
				say_item_vnum(21920)
				set_state(lv30)
			elseif pc.get_job() == 3 then
				say_title("Silah�n� se� ")
				say("")
				say("Silah�n� se�: ")
				local s = select("F�rt�na �a�r�s� (�an)","G�lge Dans��s� (Yelpaze) ")
				if s == 1 then
					pc.give_item2_select("21924", 1)
					item.set_attribute(0, 72, 10)
					say_title("Ba�ar�l�! ")
					say("")
					say_reward("Yeni Silah�n: ")
					say_item_vnum(21924)
					set_state(lv30)
				elseif s == 2 then
					pc.give_item2_select("21925", 1)
					item.set_attribute(0, 72, 10)
					say_title("Ba�ar�l�! ")
					say("")
					say_reward("Yeni Silah�n: ")
					say_item_vnum(21925)
					set_state(lv30)
				end
			elseif pc.get_job() == 4 then
				pc.give_item2_select("21926", 1)
				item.set_attribute(0, 72, 10)
				say_title("Ba�ar�l�! ")
				say("")
				say_reward("Yeni Silah�n: ")
				say_item_vnum(21926)
				set_state(lv30)
			end
		end
	end
	state lv30 begin
		when login or levelup begin
			if pc.get_level() >= 30 then
				send_letter("Gen� kahramanlar i�in silah ")
			end
		end
		
		when button or info begin
			say_title("Gen� kahramanlar i�in silahlar ")
			say("")
			say("Gen� kahraman en cesur sava��� olarak nam sald�n ")
			say("ama hala tecr�be ve g�ce ihtiyac�n var. Ejderha ")
			say("Tanr�s� bu krall���n umudu olarak seni koruyup ")
			say("kollayacak ve sana maceralar�nda belli bir s�re ")
			say("kullanabilece�in bir silah sunacak. ")
			wait()
			if pc.get_job() == 0 then
				say_title("Silah�n� se� ")
				say("")
				say("Silah�n� se�: ")
				local s = select("Ruh H�rs�z� (Tek El)","Karar (�ift El) ")
				if s == 1 then
					pc.give_item2_select("21930", 1)
					item.set_attribute(0, 72, 10)
					say_title("Ba�ar�l�! ")
					say("")
					say_reward("Yeni Silah�n: ")
					say_item_vnum(21930)
					set_state(lv40)
				elseif s == 2 then
					pc.give_item2_select("21933", 1)
					item.set_attribute(0, 72, 10)
					say_title("Ba�ar�l�! ")
					say("")
					say_reward("Yeni Silah�n: ")
					say_item_vnum(21933)
					set_state(lv40)
				end
			elseif pc.get_job() == 1 then
				say_title("Silah�n� se� ")
				say("")
				say("Silah�n� se�: ")
				local s = select("Ruh Oymac�s� (B��ak)","F�rt�na El�isi (Yay) ")
				if s == 1 then
					pc.give_item2_select("21931", 1)
					item.set_attribute(0, 72, 10)
					say_title("Ba�ar�l�! ")
					say("")
					say_reward("Yeni Silah�n: ")
					say_item_vnum(21931)
					set_state(lv40)
				elseif s == 2 then
					pc.give_item2_select("21932", 1)
					item.set_attribute(0, 72, 10)
					say_title("Ba�ar�l�! ")
					say("")
					say_reward("Yeni Silah�n: ")
					say_item_vnum(21932)
					set_state(lv40)
				end
			elseif pc.get_job() == 2 then
				pc.give_item2_select("21930", 1)
				item.set_attribute(0, 72, 10)
				say_title("Ba�ar�l�! ")
				say("")
				say_reward("Yeni Silah�n: ")
				say_item_vnum(21930)
				set_state(lv40)
			elseif pc.get_job() == 3 then
				say_title("Silah�n� se� ")
				say("")
				say("Silah�n� se�: ")
				local s = select("G�r�lt� Yank�s� (�an)","R�zgar �ark�s� (Yelpaze) ")
				if s == 1 then
					pc.give_item2_select("21934", 1)
					item.set_attribute(0, 72, 10)
					say_title("Ba�ar�l�! ")
					say("")
					say_reward("Yeni Silah�n: ")
					say_item_vnum(21934)
					set_state(lv40)
				elseif s == 2 then
					pc.give_item2_select("21935", 1)
					item.set_attribute(0, 72, 10)
					say_title("Ba�ar�l�! ")
					say("")
					say_reward("Yeni Silah�n: ")
					say_item_vnum(21935)
					set_state(lv40)
				end
			elseif pc.get_job() == 4 then
				pc.give_item2_select("21936", 1)
				item.set_attribute(0, 72, 10)
				say_title("Ba�ar�l�! ")
				say("")
				say_reward("Yeni Silah�n: ")
				say_item_vnum(21936)
				set_state(lv40)
			end
		end
	end			
	state lv40 begin
		when login or levelup begin
			if pc.get_level() >= 40 then
				send_letter("Gen� kahramanlar i�in silah ")
			end
		end
		
		when button or info begin
			say_title("Gen� kahramanlar i�in silahlar ")
			say("")
			say("Gen� kahraman en cesur sava��� olarak nam sald�n ")
			say("ama hala tecr�be ve g�ce ihtiyac�n var. Ejderha ")
			say("Tanr�s� bu krall���n umudu olarak seni koruyup ")
			say("kollayacak ve sana maceralar�nda belli bir s�re ")
			say("kullanabilece�in bir silah sunacak. ")
			wait()
			if pc.get_job() == 0 then
				say_title("Silah�n� se� ")
				say("")
				say("Silah�n� se�: ")
				local s = select("�elik �ark�s� (Tek El)","K�yamet (�ift El) ")
				if s == 1 then
					pc.give_item2_select("21940", 1)
					item.set_attribute(0, 72, 10)
					say_title("Ba�ar�l�! ")
					say("")
					say_reward("Yeni Silah�n: ")
					say_item_vnum(21940)
					set_state(lv50)
				elseif s == 2 then
					pc.give_item2_select("21943", 1)
					item.set_attribute(0, 72, 10)
					say_title("Ba�ar�l�! ")
					say("")
					say_reward("Yeni Silah�n: ")
					say_item_vnum(21943)
					set_state(lv50)
				end
			elseif pc.get_job() == 1 then
				say_title("Silah�n� se� ")
				say("")
				say("Silah�n� se�: ")
				local s = select("Ay I���� Ne�teri (B��ak)","G�lge Yapra�� (Yay) ")
				if s == 1 then
					pc.give_item2_select("21941", 1)
					item.set_attribute(0, 72, 10)
					say_title("Ba�ar�l�! ")
					say("")
					say_reward("Yeni Silah�n: ")
					say_item_vnum(21941)
					set_state(lv50)
				elseif s == 2 then
					pc.give_item2_select("21942", 1)
					item.set_attribute(0, 72, 10)
					say_title("Ba�ar�l�! ")
					say("")
					say_reward("Yeni Silah�n: ")
					say_item_vnum(21942)
					set_state(lv50)
				end
			elseif pc.get_job() == 2 then
				pc.give_item2_select("21940", 1)
				item.set_attribute(0, 72, 10)
				say_title("Ba�ar�l�! ")
				say("")
				say_reward("Yeni Silah�n: ")
				say_item_vnum(21940)
				set_state(lv50)
			elseif pc.get_job() == 3 then
				say_title("Silah�n� se� ")
				say("")
				say("Silah�n� se�: ")
				local s = select("Onur Sedas� (�an)","Kuzgun Pen�esi (Yelpaze) ")
				if s == 1 then
					pc.give_item2_select("21944", 1)
					item.set_attribute(0, 72, 10)
					say_title("Ba�ar�l�! ")
					say("")
					say_reward("Yeni Silah�n: ")
					say_item_vnum(21944)
					set_state(lv50)
				elseif s == 2 then
					pc.give_item2_select("21945", 1)
					item.set_attribute(0, 72, 10)
					say_title("Ba�ar�l�! ")
					say("")
					say_reward("Yeni Silah�n: ")
					say_item_vnum(21945)
					set_state(lv50)
				end
			elseif pc.get_job() == 4 then
				pc.give_item2_select("21946", 1)
				item.set_attribute(0, 72, 10)
				say_title("Ba�ar�l�! ")
				say("")
				say_reward("Yeni Silah�n: ")
				say_item_vnum(21946)
				set_state(lv50)
			end
		end
	end	
	state lv50 begin
		when login or levelup begin
			if pc.get_level() >= 50 then
				send_letter("Gen� kahramanlar i�in silah ")
			end
		end
		
		when button or info begin
			say_title("Gen� kahramanlar i�in silahlar ")
			say("")
			say("Gen� kahraman en cesur sava��� olarak nam sald�n ")
			say("ama hala tecr�be ve g�ce ihtiyac�n var. Ejderha ")
			say("Tanr�s� bu krall���n umudu olarak seni koruyup ")
			say("kollayacak ve sana maceralar�nda belli bir s�re ")
			say("kullanabilece�in bir silah sunacak. ")
			wait()
			if pc.get_job() == 0 then
				say_title("Silah�n� se� ")
				say("")
				say("Silah�n� se�: ")
				local s = select("Balmung Miras� (Tek El)","G�k G�r�lt�s� Darbesi (�ift El) ")
				if s == 1 then
					pc.give_item2_select("21950", 1)
					item.set_attribute(0, 72, 10)
					say_title("Ba�ar�l�! ")
					say("")
					say_reward("Yeni Silah�n: ")
					say_item_vnum(21950)
					set_state(lv60)
				elseif s == 2 then
					pc.give_item2_select("21953", 1)
					item.set_attribute(0, 72, 10)
					say_title("Ba�ar�l�! ")
					say("")
					say_reward("Yeni Silah�n: ")
					say_item_vnum(21953)
					set_state(lv60)
				end
			elseif pc.get_job() == 1 then
				say_title("Silah�n� se� ")
				say("")
				say("Silah�n� se�: ")
				local s = select("�l�m Perisi (B��ak)","Titan F�s�lt�s� (Yay) ")
				if s == 1 then
					pc.give_item2_select("21951", 1)
					item.set_attribute(0, 72, 10)
					say_title("Ba�ar�l�! ")
					say("")
					say_reward("Yeni Silah�n: ")
					say_item_vnum(21951)
					set_state(lv60)
				elseif s == 2 then
					pc.give_item2_select("21952", 1)
					item.set_attribute(0, 72, 10)
					say_title("Ba�ar�l�! ")
					say("")
					say_reward("Yeni Silah�n: ")
					say_item_vnum(21952)
					set_state(lv60)
				end
			elseif pc.get_job() == 2 then
				pc.give_item2_select("21950", 1)
				item.set_attribute(0, 72, 10)
				say_title("Ba�ar�l�! ")
				say("")
				say_reward("Yeni Silah�n: ")
				say_item_vnum(21950)
				set_state(lv60)
			elseif pc.get_job() == 3 then
				say_title("Silah�n� se� ")
				say("")
				say("Silah�n� se�: ")
				local s = select("��nlayan �ntikam (�an)","Belialin Sava� Yelpazesi (Yelpaze) ")
				if s == 1 then
					pc.give_item2_select("21954", 1)
					item.set_attribute(0, 72, 10)
					say_title("Ba�ar�l�! ")
					say("")
					say_reward("Yeni Silah�n: ")
					say_item_vnum(21954)
					set_state(lv60)
				elseif s == 2 then
					pc.give_item2_select("21955", 1)
					item.set_attribute(0, 72, 10)
					say_title("Ba�ar�l�! ")
					say("")
					say_reward("Yeni Silah�n: ")
					say_item_vnum(21955)
					set_state(lv60)
				end
			elseif pc.get_job() == 4 then
				pc.give_item2_select("21956", 1)
				item.set_attribute(0, 72, 10)
				say_title("Ba�ar�l�! ")
				say("")
				say_reward("Yeni Silah�n: ")
				say_item_vnum(21956)
				set_state(lv60)
			end
		end
	end		
	state lv60 begin
		when login or levelup begin
			if pc.get_level() >= 60 then
				send_letter("Gen� kahramanlar i�in silah ")
			end
		end
		
		when button or info begin
			say_title("Gen� kahramanlar i�in silahlar ")
			say("")
			say("Gen� kahraman en cesur sava��� olarak nam sald�n ")
			say("ama hala tecr�be ve g�ce ihtiyac�n var. Ejderha ")
			say("Tanr�s� bu krall���n umudu olarak seni koruyup ")
			say("kollayacak ve sana maceralar�nda belli bir s�re ")
			say("kullanabilece�in bir silah sunacak. ")
			wait()
			if pc.get_job() == 0 then
				say_title("Silah�n� se� ")
				say("")
				say("Silah�n� se�: ")
				local s = select("Askalahel (Tek El)","Tanr�sal Karanl�k (�ift El) ")
				if s == 1 then
					pc.give_item2_select("21960", 1)
					item.set_attribute(0, 72, 10)
					say_title("Ba�ar�l�! ")
					say("")
					say_reward("Yeni Silah�n: ")
					say_item_vnum(21960)
					set_state(lv70)
				elseif s == 2 then
					pc.give_item2_select("21963", 1)
					item.set_attribute(0, 72, 10)
					say_title("Ba�ar�l�! ")
					say("")
					say_reward("Yeni Silah�n: ")
					say_item_vnum(21963)
					set_state(lv70)
				end
			elseif pc.get_job() == 1 then
				say_title("Silah�n� se� ")
				say("")
				say("Silah�n� se�: ")
				local s = select("�fkeli Diken (B��ak)","Tanr�sal Ba� (Yay) ")
				if s == 1 then
					pc.give_item2_select("21961", 1)
					item.set_attribute(0, 72, 10)
					say_title("Ba�ar�l�! ")
					say("")
					say_reward("Yeni Silah�n: ")
					say_item_vnum(21961)
					set_state(lv70)
				elseif s == 2 then
					pc.give_item2_select("21962", 1)
					item.set_attribute(0, 72, 10)
					say_title("Ba�ar�l�! ")
					say("")
					say_reward("Yeni Silah�n: ")
					say_item_vnum(21962)
					set_state(lv70)
				end
			elseif pc.get_job() == 2 then
				pc.give_item2_select("21960", 1)
				say_title("Ba�ar�l�! ")
				say("")
				say_reward("Yeni Silah�n: ")
				say_item_vnum(21960)
				set_state(lv70)
			elseif pc.get_job() == 3 then
				say_title("Silah�n� se� ")
				say("")
				say("Silah�n� se�: ")
				local s = select("Son Darbe (�an)","Nexus (Yelpaze) ")
				if s == 1 then
					pc.give_item2_select("21964", 1)
					item.set_attribute(0, 72, 10)
					say_title("Ba�ar�l�! ")
					say("")
					say_reward("Yeni Silah�n: ")
					say_item_vnum(21964)
					set_state(lv70)
				elseif s == 2 then
					pc.give_item2_select("21965", 1)
					item.set_attribute(0, 72, 10)
					say_title("Ba�ar�l�! ")
					say("")
					say_reward("Yeni Silah�n: ")
					say_item_vnum(21965)
					set_state(lv70)
				end
			elseif pc.get_job() == 4 then
				pc.give_item2_select("21966", 1)
				item.set_attribute(0, 72, 10)
				say_title("Ba�ar�l�! ")
				say("")
				say_reward("Yeni Silah�n: ")
				say_item_vnum(21966)
				set_state(lv70)
			end
		end
	end		
	state lv70 begin
		when login or levelup begin
			if pc.get_level() >= 70 then
				send_letter("Gen� kahramanlar i�in silah ")
			end
		end
		
		when button or info begin
			say_title("Gen� kahramanlar i�in silahlar ")
			say("")
			say("Gen� kahraman en cesur sava��� olarak nam sald�n ")
			say("ama hala tecr�be ve g�ce ihtiyac�n var. Ejderha ")
			say("Tanr�s� bu krall���n umudu olarak seni koruyup ")
			say("kollayacak ve sana maceralar�nda belli bir s�re ")
			say("kullanabilece�in bir silah sunacak. ")
			wait()
			if pc.get_job() == 0 then
				say_title("Silah�n� se� ")
				say("")
				say("Silah�n� se�: ")
				local s = select("Merasim (Tek El)","Brahindul (�ift El) ")
				if s == 1 then
					pc.give_item2_select("21970", 1)
					item.set_attribute(0, 72, 10)
					say_title("Ba�ar�l�! ")
					say("")
					say_reward("Yeni Silah�n: ")
					say_item_vnum(21970)
					set_state(__end__)
				elseif s == 2 then
					pc.give_item2_select("21973", 1)
					item.set_attribute(0, 72, 10)
					say_title("Ba�ar�l�! ")
					say("")
					say_reward("Yeni Silah�n: ")
					say_item_vnum(21973)
					set_state(__end__)
				end
			elseif pc.get_job() == 1 then
				say_title("Silah�n� se� ")
				say("")
				say("Silah�n� se�: ")
				local s = select("Kral Katili (B��ak)","Ependrion (Yay) ")
				if s == 1 then
					pc.give_item2_select("21971", 1)
					item.set_attribute(0, 72, 10)
					say_title("Ba�ar�l�! ")
					say("")
					say_reward("Yeni Silah�n: ")
					say_item_vnum(21971)
					set_state(__end__)
				elseif s == 2 then
					pc.give_item2_select("21972", 1)
					item.set_attribute(0, 72, 10)
					say_title("Ba�ar�l�! ")
					say("")
					say_reward("Yeni Silah�n: ")
					say_item_vnum(21972)
					set_state(__end__)
				end
			elseif pc.get_job() == 2 then
				pc.give_item2_select("21970", 1)
				item.set_attribute(0, 72, 10)
				say_title("Ba�ar�l�! ")
				say("")
				say_reward("Yeni Silah�n: ")
				say_item_vnum(21970)
				set_state(__end__)
			elseif pc.get_job() == 3 then
				say_title("Silah�n� se� ")
				say("")
				say("Silah�n� se�: ")
				local s = select("�l�m �p�c��� (�an)","Kor Glash (Yelpaze) ")
				if s == 1 then
					pc.give_item2_select("21974", 1)
					item.set_attribute(0, 72, 10)
					say_title("Ba�ar�l�! ")
					say("")
					say_reward("Yeni Silah�n: ")
					say_item_vnum(21974)
					set_state(__end__)
				elseif s == 2 then
					pc.give_item2_select("21975", 1)
					item.set_attribute(0, 72, 10)
					say_title("Ba�ar�l�! ")
					say("")
					say_reward("Yeni Silah�n: ")
					say_item_vnum(21975)
					set_state(__end__)
				end
			elseif pc.get_job() == 4 then
				pc.give_item2_select("21976", 1)
				item.set_attribute(0, 72, 10)
				say_title("Ba�ar�l�! ")
				say("")
				say_reward("Yeni Silah�n: ")
				say_item_vnum(21976)
				set_state(__end__)
			end
		end
	end
	state __end__ begin
	end
end