quest Bedensel5LvBec begin
	state start begin
		when login begin
			cmdchat("bedensel_oto_bec "..q.getcurrentquestindex())
		end
		when info or button begin
		local pc_job = pc . get_job ( ) 
		if pc_job ~= 0 then 
--		say_title ( "Treinamento incorrecto " ) 
--		say ( "" ) 
--		say ( "Peço desculpa." ) 
--		say ( "Somente os Guerreiros podem escolher Arte Corpo." ) 
--		say ( "" ) 
--		say ( "" ) 
		if pc_job == 0 then 
--		say_reward ( "Guerreiro, Guerreiro Mental " ) 
--		say_reward ( "ou Arte Corpo " ) 
--		say_reward ( "Pode escolher." ) 
		elseif pc_job == 1 then 
--		say_reward ( "Ninja Arte Adagas" ) 
--		say_reward ( "Ou Arte Arco" ) 
--		say_reward ( "Pode escolher." ) 
		elseif pc_job == 2 then 
--		say_reward ( "Sura Arte Magia " ) 
--		say_reward ( "Ou Arte Armas" ) 
--		say_reward ( "Pode escolher.." ) 
		elseif pc_job == 3 then 
--		say_reward ( "Shaman Arte Dragão" ) 
--		say_reward ( "Ou Arte Cura" ) 
--		say_reward ( "Pode escolher." ) 
		end 
--		say ( "" ) 
		return 
		end 
--		say_title ( "Treinamento de Gerreiro" ) 
--		say ( "O treinamento de guerra física é um treinamento de luta rápida e" ) 
--		say ( "métodos, bem como um ataque básico melhorado" ) 
--		say ( "tipos." ) 
--		say_reward ( "Requisito: Seja um guerreiro no nível 5 e acima" ) 
--		say ( "" ) 
--		local s = select ( "começam a" , "Então" ) 
		if 2 == s then 
		return 
		end 
		if pc . get_job ( ) ~= 0 or pc . get_skill_group ( ) ~= 0 then 
		test_chat ( "npc_is_same_job:" .. bool_to_str ( npc_is_same_job ( ) ) ) 
		test_chat ( "pc.get_skill_group:" .. pc . get_skill_group ( ) ) 
		test_chat ( "pc_job:" .. pc . get_job ( ) ) 
		return 
		end 
		set_state ( "start" ) 
		pc . set_skill_group ( 1 ) 
		pc . clear_skill ( ) 
		char_log ( 0 , "CLEAR_SKILL" , ""O próximo talento natural quando o professor é liberado." ) 
--		say_title ( Treinamento de guerra física selecionado." ) 
--		say ( "você Hoþgel!" ) 
		if not pc . is_clear_skill_group ( ) then 
--		say ( "4 pontos de habilidade para escolher treinar suas habilidades" ) 
--		say ( "Pode ganhar esses resultados para qualquer" ) 
--		say ( "Pode usá-lo para melhorar." ) 
--		say_title ( "informação:" ) 
--		say_reward ( "ganhou 4 pontos de habilidade." ) 
--		say ( "" ) 
		pc . set_skill_level ( 1 , 0 ) 
		pc . set_skill_level ( 2 , 0 ) 
		pc . set_skill_level ( 3 , 0 ) 
		pc . set_skill_level ( 4 , 0 ) 
		pc . set_skill_level ( 5 , 0 ) 
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
--		say_reward ( "Quando escolhe um novo curso," ) 
--		say_reward ( "Não terá mais pontos de abilidades." ) 
--		say ( "" ) 
		end 
--		clear_letter ( ) 
		end
	end
end
