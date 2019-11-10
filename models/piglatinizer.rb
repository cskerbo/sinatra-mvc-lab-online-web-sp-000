class PigLatinizer

 attr_accessor :user_phrase, :name


 def initialize(user_phras)
   @user_phrase = user_phrase.downcase
   @name = name
 end

def piglatinize
    individual_word = user_phrase.split(" ")
    latinized_word = individual_word.map do |word|
      first_letter = word[0].downcase
      if ["a", "e", "i", "o", "u"].include?(first_letter)
        "#{word}way"
      else
        consonants = []
        consonants << word[0]
          if ["a", "e", "i", "o", "u"].include?(word[1]) == false
            consonants << word[1]
            if ["a", "e", "i", "o", "u"].include?(word[2]) == false
              consonants << word[2]
            end
          end
        word[consonants.length..-1] + consonants.join + "ay"
      end
    end
    latinized_word.join(" ")
end

end
