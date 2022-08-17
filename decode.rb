MORSESYMBOLS = {
  A: '.-', B: '-...', C: '-.-.', D: '-..', E: '.', F: '..-.', G: '--.', H: '....',
  I: '..', J: '.---', K: '-.-', L: '.-..', M: '--', N: '-.', O: '---', P: '.--.',
  Q: '--.-', R:  '.-.', S: '...', T: '-', U: '..-', V: '...-', W: '.--', X: '-..-',
  Y: '-.--', Z: '--..'
}.freeze

# Decode char
def decode_char(entry)
  MORSESYMBOLS.each do |letter, morse|
    return letter.to_s if morse == entry
  end
end

# Decode word
def decode_word(word)
  decoded_word = ''
  word_array = word.split
  word_array.each do |letter|
    decoded_word += decode_char(letter)
  end
    decoded_word
end

# Decode Message

def decode_message(message)
  decoded_message = ''
  word_array = message.split('   ')
  word_array.each do |word|
    decoded_message += "#{decode_word(word)} "
  end
  puts decoded_message
end

decode_message('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
