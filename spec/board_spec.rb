# frozen_string_literal: true

require_relative '../lib/board'

describe 'Board' do
  describe 'initialize' do
    it 'Checking for board array' do
      board = Board.new
      expect(board.cell_grid[0][0]).to have_attributes(mark: '')
      expect(board.cell_grid[0][1]).to have_attributes(mark: '')
      expect(board.cell_grid[0][2]).to have_attributes(mark: '')
      expect(board.cell_grid[1][0]).to have_attributes(mark: '')
      expect(board.cell_grid[1][1]).to have_attributes(mark: '')
      expect(board.cell_grid[1][2]).to have_attributes(mark: '')
      expect(board.cell_grid[2][0]).to have_attributes(mark: '')
      expect(board.cell_grid[2][1]).to have_attributes(mark: '')
      expect(board.cell_grid[2][2]).to have_attributes(mark: '')
    end
  end
  describe 'set_value_grid?' do
    it 'Checking for setting a value in a grid' do
      board = Board.new
      expect(board.set_value_grid?(5, 'X')).to be true
    end
  end
  describe 'get_cell_value' do
    it 'Checking for getting a value in a grid' do
      board = Board.new
      expect(board.get_cell_value(5).mark).to eql('')
    end
  end
end
