MORSE_CODE_HASH = { '.-' => 'a', '-...' => 'b', '-.-.' => 'c',
                    '-..' => 'd', '.' => 'e', '..-.' => 'f',
                    '--.' => 'g', '....' => 'h', '..' => 'i',
                    '.---' => 'j', '-.-' => 'k', '.-..' => 'l',
                    '--' => 'm', '-.' => 'n', '---' => 'o',
                    '.--.' => 'p', '--.-' => 'q', '.-.' => 'r',
                    '...' => 's', '-' => 't', '..-' => 'u',
                    '...-' => 'v', '.--' => 'w', '-..-' => 'x',
                    '-.--' => 'y', '--..' => 'z' }.freeze

# Decrypt a character
def decode_char(char)
  code = char.to_s
  letter = ''
  if code == ' '
    'No input received!'
  else
    letter = MORSE_CODE_HASH[code].upcase if MORSE_CODE_HASH.key?(code)
    alert = 'Invalid character received!' unless MORSE_CODE_HASH.key?(code)
    return letter if letter != ''

  end
  alert
end

# Decrypt a word
def decode_word(word)
  code = word
  characters = ''
  if code == ' '
    alert = 'Empty word/Invalid character!'
    return alert
  else
    word_array = code.split
    word_array.each do |char|
      characters += decode_char(char)
    end
  end
  characters
end

# Decode a sentence
def decode_sentence(message)
  sentence_array = message.split('   ')
  statement = ''
  sentence_array.each do |word|
    statement += "#{decode_word(word)} "
  end
  statement
end
