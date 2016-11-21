module Models
  class Word
    attr_reader :letters, :length

    def initialize letters
      @letters = letters
      @length = letters.length
    end

    def id
      # remove id
    end

    def jsonapi_serializer_class_name
      'Serializers::WordSerializer'
    end
  end
end
