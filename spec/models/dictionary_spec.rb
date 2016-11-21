require 'spec_helper'

describe Models::Dictionary do
  before { Models::Dictionary.any_instance.stub(:read_dictionary_file).and_return([word]) }

  let(:letters) { 'foo' }
  let(:word) { Models::Word.new letters }
  let(:dictionary) { Models::Dictionary.new }

  describe '#new' do
    it 'creates a dictionary of words' do
      expect(dictionary.words).to eq [word]
    end
  end

  describe '#search' do
    context 'when a search term is found' do
      it 'returns an array of Models::Word objects' do
        expect(dictionary.search('fo')).to eq [word]
      end
    end

    context 'when a search term is not found' do
      it 'returns an empty array' do
        expect(dictionary.search('xyzkklj')).to eq []
      end
    end
  end
end
