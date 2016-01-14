def prime?(x)
  return false if x < 2
  2.upto(Math.sqrt(x)) { |i| return false if x % i == 0 }
  true
end

def fact(x)
  facts = []
  2.upto(Math.sqrt(x)) do |d|
    while x % d == 0
      facts.push(d)
      x /= d
    end
  end
  facts.push(x) if x > 1
  facts
end

def phi(m_list)
  product = 1
  m_list.each { |element| product *= (element-1) }
  product
end

def sqrfree?(m_list)
  m_list.length == m_list.uniq.length
end

numberlist = []
ARGV.each do |arg|
  next if (n = arg.to_i) <= 0
  numberlist << n
end
if numberlist.length > 0
  longest = numberlist.map { |n| n.to_s.length }.max + 1
  puts "\nIs <n> a prime number?"
  numberlist.each do |n|
    prime = prime?(n)
    facts = fact(n)
    printf "%#{-longest}s #{prime}", "#{n}:"
    print " (#{facts.join('*')})" unless prime
    sqrfree?(facts) ? print(", Φ(n)=#{phi(facts)}") : puts
  end
else
  puts 'Syntax: prime.rb number1 [number2 ...]'
end
at_exit { puts }