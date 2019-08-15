require 'benchmark'

input = ('a'..'z').map { |letter| [letter, letter] }.to_h

puts Benchmark.measure {
  5000_000.times do
    input.map { |key, value| [key.to_sym, value] }.to_h
  end
}
