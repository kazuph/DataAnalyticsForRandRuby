#!/usr/bin/env ruby
# coding : utf-8
# なんか懐かしいからRubyの基礎から復讐している
puts "There are #{24 * 60 * 60} seconds in a day"

puts 'This is also a string'

puts %q{hoge\tfuga}
puts %q(hoge\tfuga)
puts %q#hoge\tfuga#
puts %q|hoge\tfuga|
puts %Q{hoge\tfuga}
puts %Q(hoge\tfuga)
puts %Q#hoge\tfuga#
puts %Q|hoge\tfuga|

# ヒアドキュメント
string = <<EOF
hoge
  fuga
  piyo
        123552345
end
EOF
puts string

puts a = 'Hello'
puts b = 'World'
puts a + b
puts a * 3
puts a << b
puts a
c = %q@This is a string@
puts c.split

puts ary = [1, 2, 'this', 3.45]
puts ary[2]
ary[4] = 'hoge'
puts ary
puts ary[0..2]
puts [1, 2, 'this', 'is', 'an', ['another', 'array']]

ary =  [1, 2, 'this', 'is', 'an', ['another', 'array']]
ary.each do |item|
  puts item
end

puts hash = {'a' => 'this', 'b' => 'is', 'c' => 'hash'}
puts hash['b']

puts hash = {canon: 'camera', nikon: 'camera', iphone:'iphone'}

hash.each do |key, value|
    puts "#{key} is a #{value}"
end
ii = (1..4).map do |i|
    i*i
end
p ii

p a = ['cat', 'horse', 'monkey']

begin
  a = 2 / 0
rescue => e
  puts e
end

# ダックタイピング
def op(a, b)
  raise "opの引数は文字列でなければならない" unless a.is_a? String and b.is_a?String
  a << b
end
p op 'apple', 'banana'
