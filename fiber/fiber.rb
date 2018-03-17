#!/usr/bin/env ruby
# frozen_string_literal: true

require 'fiber'

fiber = Fiber.new do
  loop do
    Fiber.yield Thread.current.object_id
  end
end

puts <<~EOS
  ===========================
    parent : #{Thread.current.object_id}
    child  : #{fiber.resume}
  ===========================
EOS
