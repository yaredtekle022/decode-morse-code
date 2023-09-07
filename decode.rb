MORSEDIC = {
  '.-' => 'a',
  '-...' => 'b',
  '-.-.' => 'c',
  '-..' => 'd',
  '.' => 'e',
  '..-.' => 'f',
  '--.' => 'g',
  '....' => 'h',
  '..' => 'i',
  '.---' => 'j',
  '-.-' => 'k',
  '.-..' => 'l',
  '--' => 'm',
  '-.' => 'n',
  '---' => 'o',
  '.--.' => 'p',
  '--.-' => 'q',
  '.-.' => 'r',
  '...' => 's',
  '-' => 't',
  '..-' => 'u',
  '...-' => 'v',
  '.--' => 'w',
  '-..-' => 'x',
  '-.--' => 'y',
  '--..' => 'z',
  ' ' => ' ',
  '.----' => '1',
  '..---' => '2',
  '...--' => '3',
  '....-' => '4',
  '.....' => '5',
  '-....' => '6',
  '--...' => '7',
  '---..' => '8',
  '----.' => '9',
  '-----' => '0'
}.freeze

class DecodeMorse
  def decode_char(morse)
    MORSEDIC[morse]
  end

  def decoder(morse)
    decoded_string = ''
    splited_morse = morse.split

    splited_morse.each do |key|
      decoded_string += (MORSEDIC[key]).to_s
    end

    decoded_string
  end

  def decode_string(morse)
    decoder(morse)
  end

  def decode_message(morse)
    decoded_string = ''
    splited_morse = morse.split('   ')

    splited_morse.each_with_index do |val, _index|
      sub_conversion = decoder(val)
      decoded_string += "#{sub_conversion} "
    end

    decoded_string
  end
end

decode = DecodeMorse.new
puts(decode.decode_char('-.--'))
puts(decode.decode_string('-- -.--   -. .- -- .'))
puts(decode.decode_message('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'))
