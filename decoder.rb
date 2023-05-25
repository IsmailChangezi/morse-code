class MorseCodeDecoder
  MORSE_CODE = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D',
    '.' => 'E', '..-.' => 'F', '--.' => 'G', '....' => 'H',
    '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L',
    '--' => 'M', '-.' => 'N', '---' => 'O', '.--.' => 'P',
    '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X',
    '-.--' => 'Y', '--..' => 'Z'
  }.freeze

  def self.decode_char(morse_char)
    MORSE_CODE[morse_char]
  end

  def self.decode_word(morse_word)
    morse_word.split(' ').map { |morse_char| decode_char(morse_char) }.join
  end

  def self.decode(message)
    message.split('   ').map { |morse_word| decode_word(morse_word) }.join(' ')
  end
end



decoded_char = MorseCodeDecoder.decode_char('.-')
puts decoded_char # Output: "A"


decoded_word = MorseCodeDecoder.decode_word("-- -.--")
puts decoded_word # Output: "MY"


decoded_message = MorseCodeDecoder.decode(" .-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...")
puts decoded_message
