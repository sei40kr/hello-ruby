require 'continuation'

x = 1
if x == 1
  y = x * callcc do |cont|
    @a = cont
    x
  end
  puts y
end
if y < 5
  x += 1
  @a.call(x)
end
