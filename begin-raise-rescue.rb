#!/usr/bin/env ruby

# begin-raise-rescue.rb
# @author Seong Yong-ju ( @sei40kr )

begin
  1 / 0
rescue ZeroDivisionError => e
  p e.class
  p e.message
  p e.backtrace
else
  # other exception
ensure
  # always executed
end

# => ZeroDivisionError
# => "divided by 0"
# => ["begin-raise-rescue.rb:7:in `/'", "begin-raise-rescue.rb:7:in `<main>'"]
