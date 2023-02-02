class Caesar_cipher
  attr_accessor :new_word

  def join_new_word
    new_word.join('')
  end

  def caesar_cipher(string, number)
    alphabet = ('a'..'z').to_a
    caps_alphabet = ('A'..'Z').to_a
    arrayed_string = string.split('')

    self.new_word = []
    arrayed_string.map do |letter|
      if letter !~ /[A-Za-z]/
        new_word.push(letter)
        next
      end

      if letter == letter.upcase
        indexof = caps_alphabet.index(letter)
        new_index = indexof + number
        new_index -= 26 if new_index > 25
        new_word.push(caps_alphabet[new_index])
        next
      end

      indexof = alphabet.index(letter)
      new_index = indexof + number
      new_index -= 26 if new_index > 25
      new_word.push(alphabet[new_index])
    end

    # puts new_word.join('')

    join_new_word
  end
end

# driver code
cipher = Caesar_cipher.new
cipher.caesar_cipher('What a string!!', 14)

# created an array of the alphabet
# split the string to induvidual characters
# getting character index of the alphabet
# adjusting the index using the given number
# pushing the new letter to new wor array
# joining together the words from the new word array
