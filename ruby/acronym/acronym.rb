class Acronym
    def self.abbreviate(word_strings)
       word_strings.scan(/\b\w/).join.upcase
    end
end
