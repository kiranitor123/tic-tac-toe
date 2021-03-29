# frozen_string_literal: true

require_relative '../lib/player'

describe Player do
  describe 'initialize' do
    it 'checking for name and mark' do
      player = Player.new('Diego', 'X')
      expect(player.name).to eql('Diego')
      expect(player.mark).to eql('X')
    end
  end
  describe 'add_move' do
    it 'checking for the player move' do
      player = Player.new('Diego', 'X')
      player.add_move(5)
      expect(player.moves).to match_array [5]
    end
  end
end
