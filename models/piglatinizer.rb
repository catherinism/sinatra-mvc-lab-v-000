require 'pry'

class PigLatinizer

  def piglatinize(word)

    vowels = %w|A E I O U a e i o u|
    consonants = ""
    #binding.pry
    if vowels.include?(word[0])
           "#{word}way"
         else
           while !vowels.include?(word[0])
             consonants << word[0]
             word = word.split("")[1..-1].join
           end
           "#{word}#{consonants}ay"
         end
       end

       def to_pig_latin(each_word)
         binding.pry
           each_word.split.map { |word| piglatinize(word)}.join(" ")
         end

  end

#consonant sounds, move consonant/s to the end, add put "ay"
#vowel sounds,just adds "way" or "yay" to the end (or just "ay").
