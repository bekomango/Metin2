quest arboreal_craft begin
	state start begin
		when 20413.chat."Geli�tirme Penceresini A� " with pc.get_level() >= 90 begin
			setskin(NOWINDOW)
			command("cube open")
		end
	end
end