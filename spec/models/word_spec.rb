require 'spec_helper'

describe Models::Word do
  let(:letters) { 'foo' }
  let(:word) { Models::Word.new letters }

  describe '#new' do
    it 'creates a word from letters' do
      expect(word.letters).to eq letters
    end

    it 'returns the length of the letters' do
      expect(word.length).to eq letters.length
    end
  end
end
