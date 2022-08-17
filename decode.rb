$morseSymbols = {A: '.-', B: '-...', C: '-.-.', D: '-..', E:'.', F:'..-.', G:'--.', H:'....',
I: '..', J: '.---', K: '-.-', L: '.-..', M: '--', N: '-.', O: '---', P: '.--.',
Q: '--.-', R:  '.-.', S: '...', T: '-', U: '..-', V: '...-', W: '.--', X: '-..-',
Y: '-.--', Z: '--..'}

# Decode char
def decode_char(entry)
  $morseSymbols.each do |letter, morse|
    puts "#{letter}" if morse == entry
  end
end
