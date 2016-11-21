module Serializers
  class WordSerializer
    include JSONAPI::Serializer
    attribute :letters
    attribute :length

    def type
      object.class.name.split("::").last.downcase
    end

    def self_link
      # nil removes links
    end
  end
end
