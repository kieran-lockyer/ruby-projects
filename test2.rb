# def last_digit(n1, n2)
#   freq = []
#   ind = 1
#   result = (n1 ** ind).to_s[-1].to_i
#   while !freq.include?(result)
#     freq.push(result)
#     ind += 1
#     result = (n1 ** ind).to_s[-1].to_i
#   end
#   return freq[n2 % freq.length - 1]
# end

# puts last_digit(2 ** 200, 2 ** 300)
# # last_digit(4, 2)
# # last_digit(9, 7)
# # last_digit(2 ** 300, 7)

def is_integer?(input)
  return input.to_s.ord >= 48 and input.to_s.ord <= 57
end

a = "70303040403034"

b = "b"

c = "70303040403034c7"

is_number = true
for char in a
  if !is_integer?(char)
    is_number = false
  end
end
puts is_number

# puts "#{a} is a number: #{is_integer?(a)}"
# puts "#{b} is a number: #{is_integer?(b)}"
# puts "#{c} is a number: #{is_integer?(c)}"