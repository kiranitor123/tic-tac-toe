require_relative '../lib/game_logic'
:board, :player_one, :player_two, :turn

describe 'GameLogic' do
    describe 'initialize' do
        it "" do
            game_logic = GameLogic.new
            expect(game_logic.board).to eql ('')
            expect(game_logic.turn).to eql ('')
            expect(game_logic.player).to eql ('')
        end
    end
    describe 'play_player' do
        it "" do
            game_logic = GameLogic.new(player, 5)
            expect(game_logic.play_player(Diego, 5)).to be true
        end
    end
end