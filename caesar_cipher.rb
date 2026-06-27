def caeser_shift(input, key)
  alphabet_small = ('a'..'z').to_a
  alphabet_big = ('A'..'Z').to_a

  if alphabet_small.include?(input)
    position = alphabet_small.index(input)
    rotated_alphabet = alphabet_small.rotate(key)
    output = rotated_alphabet[position]
  elsif alphabet_big.include?(input)
    position = alphabet_big.index(input)
    rotated_alphabet = alphabet_big.rotate(key)
    output = rotated_alphabet[position]
  else #notletter
    output = input
  end
end


def caeser_cipher(input,key)
  puts "You input: " + input
  puts "You want to shift that: " + key.to_s

  input_array = input.split("")
  output_array = input_array.map{|letter| 
    if letter.match?(/[A-Za-z]/)
      letter = caeser_shift(letter, key)
    else
      letter = letter
    end
  }
  output = output_array.join
  # output = output_array.map { |e| e || ' ' }.join("")

  puts output
end

# caeser_cipher("cat dog z", 1)
# caeser_cipher("Cat dog z", 1)

caeser_cipher("What a string!", 5)