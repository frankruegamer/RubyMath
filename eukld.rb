def eukld(a, m)
  y = [0, 1]
  r = [a, m]
  q = ['-']
  loop do
    q.push(r[-2] / r[-1])
    r.push(r[-2] % r[-1])
    break if r.last.zero?
    y.push(y[-2] - (q[-1] * y[-1]).to_i)
  end
  puts "\n    y     r |   q\n" << '-' * 18
  y.zip(r, q).each { |p| puts '%5s %5s | %3s' % p }
  puts "#{' '*10}0 |"
  puts "\nggT(#{a}, #{m}) = #{r[-2]}"
end

ARGV.map!(&:to_i)
if ARGV.length == 2 && ARGV.min > 0
  eukld(ARGV.max, ARGV.min)
else
  puts 'Syntax: eukld.rb number1 number2'
end