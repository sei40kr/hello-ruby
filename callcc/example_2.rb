require 'continuation'

x = 1
if x == 1
  y = callcc do |cont|
    @a = cont
    x
  end * x
  puts y
end
if y < 5
  x += 1
  @a.call(x)
end
