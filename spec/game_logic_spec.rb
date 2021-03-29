require_relative '../lib/game_logic'

describe 'GameLogic' do
  describe 'initialize' do
    it "checking the init of game logic" do
      game_logic = GameLogic.new('Eri','Diego')
      expect(game_logic.turn).to eql (0)
			expect(game_logic.player_one.name).to eql ('Eri')
      expect(game_logic.player_one.mark).to eql ('X')
      expect(game_logic.player_two.name).to eql ('Diego')
      expect(game_logic.player_two.mark).to eql ('O')
    end
  end
  
	describe 'play_player?' do
    it "checking if the player is playing" do
      game_logic = GameLogic.new('Eri','Diego')
      expect(game_logic.play_player?(game_logic.player_one, 5)).to be true
      expect(game_logic.play_player?(game_logic.player_two, 5)).to be false
    end
  end

	describe 'player_win?' do
    it "checking if the player win the game" do
      game_logic = GameLogic.new('Eri','Diego')
			player_two = game_logic.player_two;
			player2.add_move(1)
			player2.add_move(5)
			player2.add_move(9)
      expect(game_logic.player_win?(game_logic.player_one)).to be false
      expect(game_logic.player_win?(game_logic.player_two)).to be true
    end
  end

	describe 'next_turn' do
    it "checking if the turn advance" do
      game_logic = GameLogic.new('Eri','Diego')
			game_logic.next_turn
      expect(game_logic.turn).to eql(1)
    end
  end

	describe 'game_end?' do
    it "checking if the game ends" do
      game_logic = GameLogic.new('Eri','Diego')
      expect(game_logic.game_end?).to be false
    end
  end
end