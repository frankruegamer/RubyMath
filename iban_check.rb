def check(iban)
  iban = iban.delete(' ')
  return false unless iban.length == 22
  checksum = iban[2..3].to_i
  bk = (iban[4..-1] << iban[0..1].downcase.bytes.map { |x| x - 87 }.join << '00').to_i
  calculated_checksum = 98 - (bk % 97)
  checksum.zero? ? calculated_checksum : (calculated_checksum == checksum)
end

def answer(iban_check)
  return iban_check if iban_check.is_a? Integer
  iban_check ? 'valid' : 'invalid'
end

def format_iban(iban)
  iban.delete(' ').upcase.scan(/.{1,4}/).join(' ')
end

puts
unless ARGV.length > 0
  puts 'Enter the IBAN to check:'
  ARGV[0] = gets.chomp
  puts
end
ARGV.each { |iban| puts "#{format_iban iban}: #{answer(check iban)}" }
puts
