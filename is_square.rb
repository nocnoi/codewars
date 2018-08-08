# is_square(x)

x= 2564

x_str = Math.sqrt(x).to_s
loc = x_str.index('.')
puts x_str[loc + 1..x_str.length - 1].to_i == 0