quest lagsil begin
	state start begin
		when letter with pc . is_gm ( ) begin
			send_letter ( " GM: Lag" )
		end
		when button or info begin
			say ( " Clique uma vez ap�s cada reinicializa��o. " )
			say ( " Os logs ser�o exclu�dos a cada 15 minutos. " )
			server_timer ( "mex" , 800 )
		end
	end
	state start begin
		when mex.server_timer begin
			os.execute("cd /usr/game && sh clear.sh &")
			server_timer ( "mex" , 800 )
		end
	end
end
