
class String
  define_method(:scrabble_score) do
    letter_values = Hash.new()
    letter_values.store("A",1)
    letter_values.store("B",3)
    letter_values.store("C",3)
    letter_values.store("D",2)
    letter_values.store("E",1)
    letter_values.store("F",4)
    letter_values.store("G",2)
    letter_values.store("H",4)
    letter_values.store("I",1)
    letter_values.store("J",8)
    letter_values.store("K",5)
    letter_values.store("L",1)
    letter_values.store("M",3)
    letter_values.store("N",1)
    letter_values.store("O",1)
    letter_values.store("P",3)
    letter_values.store("Q",10)
    letter_values.store("R",1)
    letter_values.store("S",1)
    letter_values.store("T",1)
    letter_values.store("U",1)
    letter_values.store("V",4)
    letter_values.store("W",4)
    letter_values.store("X",8)
    letter_values.store("Y",4)
    letter_values.store("Z",10)

    allcaps = self.upcase()

    word_array = allcaps.split("")
     score = 0

    (allcaps.length()).times do |time|
      current_letter = word_array.at(time)

      points = letter_values.fetch(current_letter)
      score = score.+(points)
    end
    score
  end
end
