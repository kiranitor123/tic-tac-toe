# frozen_string_literal: true

require_relative '../lib/cell'

describe 'Cell' do
  describe 'initialize' do
    it 'Checking if the cell creates empty' do
      cell = Cell.new
      expect(cell.mark).to eql('')
    end
  end
  describe 'update_mark?' do
    it 'Checking if the cell update the mark' do
      cell = Cell.new
      expect(cell.update_mark?('X')).to be true
    end
  end
  describe 'valid_mark?' do
    it 'Checking if the cell mark is valid' do
      cell = Cell.new
      expect(cell.valid_mark?('A')).to be false
    end
  end
  describe 'valid?' do
    it 'Checking if the cell can put a new mark' do
      cell = Cell.new
      expect(cell.valid?).to be true
    end
  end
end
