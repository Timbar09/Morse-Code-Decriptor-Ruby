# Decode Morse code characters

def decode_char(char)
  decoder = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E', '..-.' => 'F', '--.' => 'G',
    '....' => 'H', '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N',
    '---' => 'O', '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T', '..-' => 'U',
    '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y', '--..' => 'Z', '.----' => '1',
    '..---' => '2', '...--' => '3', '....-' => '4', '.....' => '5', '-....' => '6', '--...' => '7',
    '---..' => '8', '----.' => '9', '-----' => '0'
  }

  decoder[char]
end

puts decode_char('-...')
# => B

# Decode Morse code words
def decode_word(word)
  characters = word.split
  characters.map { |char| decode_char(char) }.join
end

puts decode_word('.- -... -.-. -.. .')
# => ABCDE

# Decode a full sentence of words
def decode_sentence(sentence)
  words = sentence.split('  ')
  words.map { |word| decode_word(word) }.join(' ')
end

puts decode_sentence('.-- .... .- - ...  ..- .--.')
# => WHATS UP
