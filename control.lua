script.on_init(function()
	-- show warning if this game is not new-game
	if (game.tick > 10) then
		if not game.is_multiplayer() and game["players"] and #game["players"] == 1 then
			game.show_message_dialog{text={"gui-message.tutorial-grid-warning"}}
		else
			game.print({"gui-message.tutorial-grid-warning"})
		end
	end
end)
