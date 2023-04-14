MORSE = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
    '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
    '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
    '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
    '--..' => 'Z'
}

def decode_char(code)
  MORSE[code] || ''
end

puts decode_char('.-')


def decode_word(word_code)
  code_split = word_code.split(' ')
  code_split.map {|char| MORSE[char]}.join
 end
 
 puts decode_word('-- -.--')

 def decode(msg_code)
  message_split = msg_code.split('  ')
  msg_code.split('   ').map do |word|
    word.split(' ').map { |char| MORSE[char] }.join('')
  end.join(' ')
end

puts decode('-- -.--   -. .- -- .')
 