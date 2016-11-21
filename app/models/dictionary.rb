module Models
  class Dictionary

    DICTIONARY_PATH = "/usr/share/dict/words"

    attr_reader :words, :matches

    def initialize
      @words = read_dictionary_file
    end

    def search letters
      @matches = words.select do |word|
        word.letters.start_with? letters
      end
    end

    private

    def read_dictionary_file
      data = []
      dictionary_file = File.new(dictionary_path)
      dictionary_file.each_line do |line|
        data << wrap(line.chop)
      end

      data
    end

    def wrap word
      Word.new word
    end

    def dictionary_path
      DICTIONARY_PATH
    end
  end
end
