quest KaraB5LvBec begin
	state start begin
		when login begin
			cmdchat("karabuyu_oto_bec "..q.getcurrentquestindex())
		end
		when info or button begin
		local pc_job = pc . get_job ( ) 
		if pc_job ~= 2 then 
--		say_title ( "Yanl�� E�itim " ) 
--		say ( "" ) 
--		say ( "�z�r Dilerim." ) 
--		say ( "Sadece Suralar Kara B�y� e�itimini" ) 
--		say ( "se�ebilir." ) 
--		say ( "" ) 
		if pc_job == 0 then 
--		say_reward ( "Bir Sava���,  Zihinsel Sava�� " ) 
--		say_reward ( "veya Bedensel Sava�� " ) 
--		say_reward ( "se�ebilir." ) 
		elseif pc_job == 1 then 
--		say_reward ( "Bir Ninja, Yak�n D�v�� veya" ) 
--		say_reward ( "Uzak D�v�� e�itimini" ) 
--		say_reward ( "se�ebilir." ) 
		elseif pc_job == 2 then 
--		say_reward ( "Bir Sura, B�y�l� Silah" ) 
--		say_reward ( "veya Kara B�y� e�itimini" ) 
--		say_reward ( "se�ebilir." ) 
		elseif pc_job == 3 then 
--		say_reward ( "Bir saman, Ejderha G�c� e�itimini" ) 
--		say_reward ( "veya �yile�tirme e�itimini" ) 
--		say_reward ( "se�ebilir." ) 
		end 
--		say ( "" ) 
		return 
		end 
--		say_title ( "Kara B�y� e�itimi" ) 
--		say ( "" ) 
--		say ( "Kara B�y� e�itiminde, uzak mesafeden " ) 
--		say ( "d�smanlarini zayif d�s�ren  lanet y�ntemleri" ) 
--		say ( "�gretilir." ) 
--		say_reward ( "Gereksinim: Seviye 5 ve �st� bir sava��� olmak" ) 
--		say ( "" ) 
--		local s = select ( "Ba�la" , "Daha sonra" ) 
		if 2 == s then 
		return 
		end 
		if pc . get_job ( ) ~= 2 or pc . get_skill_group ( ) ~= 0 then 
		test_chat ( "npc_is_same_job:" .. bool_to_str ( npc_is_same_job ( ) ) ) 
		test_chat ( "pc.get_skill_group:" .. pc . get_skill_group ( ) ) 
		test_chat ( "pc_job:" .. pc . get_job ( ) ) 
		return 
		end 
		set_state ( "start" ) 
		pc . set_skill_group ( 2 ) 
		pc . clear_skill ( ) 
		char_log ( 0 , "CLEAR_SKILL" , "�gretmen silindikten sonraki dogal yetenek." ) 
--		say_title ( "Kara B�y� e�itimini se�tin." ) 
--		say ( "Ho�geldin!" ) 
		if not pc . is_clear_skill_group ( ) then 
--		say ( "Ders almay� se�ti�in i�in 4 yetenek puan� " ) 
--		say ( "kazand�n. Bu puanlar� diledi�in herhangi bir" ) 
--		say ( "yetene�ini geli�tirmek i�in kullabilirsin." ) 
--		say_title ( "Bilgi:" ) 
--		say_reward ( "4 yetenek puan� kazand�n." ) 
--		say ( "" ) 
		pc . set_skill_level ( 76 , 0 ) 
		pc . set_skill_level ( 77 , 0 ) 
		pc . set_skill_level ( 78 , 0 ) 
		pc . set_skill_level ( 79 , 0 ) 
		pc . set_skill_level ( 80 , 0 ) 
		pc . set_skill_level ( 81 , 0 ) 
		pc . set_skill_level ( 137 , 20 ) 
		pc . set_skill_level ( 138 , 20 ) 
		pc . set_skill_level ( 139 , 20 ) 
		pc . set_skill_level ( 131 , 10 ) 
		pc . set_skill_level ( 129 , 20 ) 
		pc . set_skill_level ( 128 , 20 ) 
		pc . set_skill_level ( 127 , 20 ) 
		pc . set_skill_level ( 126 , 20 ) 
		pc . set_skill_level ( 124 , 20 ) 
		pc . set_skill_level ( 121 , 20 ) 
		pc . set_skill_level ( 137 , 20 ) 
		pc . set_skill_level ( 138 , 20 ) 
		pc . set_skill_level ( 139 , 20 ) 
		pc . set_skill_level ( 140 , 20 ) 
		pc . set_skill_level ( 124 , 20 ) 
		pc . set_skill_level ( 131 , 20 ) 
		pc . set_skill_level ( 121 , 20 ) 
		pc . set_skill_level ( 129 , 20 ) 
		pc . set_skill_level ( 126 , 20 ) 
		pc . set_skill_level ( 127 , 20 ) 
		pc . set_skill_level ( 128 , 20 ) 
		pc . set_skill_level ( 130 , 20 )
		horse . unride ( ) 
		horse . advance ( ) 
		horse . advance ( ) 
		horse . advance ( ) 
		horse . advance ( ) 
		horse . advance ( ) 
		horse . advance ( ) 
		horse . advance ( ) 
		horse . advance ( ) 
		horse . advance ( ) 
		horse . advance ( ) 
		horse . advance ( ) 
		horse . advance ( ) 
		horse . advance ( ) 
		horse . advance ( ) 
		horse . advance ( ) 
		horse . advance ( ) 
		horse . advance ( ) 
		horse . advance ( ) 
		horse . advance ( ) 
		horse . advance ( ) 
		horse . advance ( )
		horse . advance ( ) 
		horse . advance ( ) 
		horse . advance ( ) 
		horse . advance ( ) 
		horse . advance ( ) 
		horse . advance ( ) 
		horse . advance ( ) 
		horse . advance ( ) 
		horse . advance ( )  

		else 
--		say_reward ( "Yeni bir ders se�tiginde," ) 
--		say_reward ( "daha fazla tecr�be puani almayacaksin." ) 
--		say ( "" ) 
		end 
		clear_letter ( ) 
		end
	end
end