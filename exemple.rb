Congos-MacBook:~ victor-barh$ irb
irb(main):001:0> def caesar_cipher(str, position)
irb(main):002:1> new_string = ''
irb(main):003:1> current_letter = ''
irb(main):004:1> char_code = 0
irb(main):005:1> def modulo(n,m)
irb(main):006:2> (n % m + m) % m
irb(main):007:2> end
irb(main):008:1> str.each_char{|c|
irb(main):009:2* current_letter = c
irb(main):010:2> char_code = c.ord
irb(main):011:2> if char_code.between?(65, 90)
irb(main):012:3> newchar_code = modulo(char_code + position-65, 26) + 65
irb(main):013:3> new_letter = newchar_code.chr
irb(main):014:3> new_string += new_letter
irb(main):015:3> elsif
irb(main):016:3* char_code.between?(97, 122)
irb(main):017:3> newchar_code = modulo(char_code + position -97, 26) + 97
irb(main):018:3> new_letter = newchar_code.chr
irb(main):019:3> new_string +=new_letter
irb(main):020:3> else new_string += current_letter
irb(main):021:3> end
irb(main):022:2> }
irb(main):023:1> return new_string
irb(main):024:1> end
=> :caesar_cipher
irb(main):025:0> p caesar_cipher('what a string!', 5)
"bmfy f xywnsl!"
=> "bmfy f xywnsl!"
irb(main):026:0> 


