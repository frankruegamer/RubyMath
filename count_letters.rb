def count_letters(text)
  count = Hash.new(0)
  text.chars.each { |c| count[c.downcase] += 1 if c =~ /[a-zA-Z]/ }
  count = count.sort_by { |_k, v| -v }
  puts; count.each { |k, v| puts "#{k}: #{v}" }
end

ARGV.each { |arg| count_letters(arg) }
