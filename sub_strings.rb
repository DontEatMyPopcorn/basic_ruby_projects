def substrings(input, dictionary)
  output_hash = Hash.new()
  
    input_array = input.split(" ")
    down_input_array = input_array.map{|word| word.downcase}
    clean_input_array = down_input_array.map{|word| word.gsub(/[^a-zA-Z0-9 ]/, '')}
    clean_input_array.each do |single_input|
      new_word = dictionary.select{|word| single_input.include?(word)}
        new_word.each do |word|
          if output_hash[word]
            output_hash[word]+= 1
          else
            output_hash[word]= 1
          end
          
        end
    end
  puts output_hash
end


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
# substrings("below", dictionary)
# substrings("below low", dictionary)
# substrings("Below low!", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)
