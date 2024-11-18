class Assignment
    def substrings(word, dictionary)
        word = word.downcase.gsub(/[^a-z]/, '')
        dictionary.reduce(Hash.new(0)) do |key, value|
            count = word.scan(value).length
            key[value] += count if count > 0
            key
        end
    end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

assignment = Assignment.new
puts assignment.substrings("below", dictionary)
puts assignment.substrings("Howdy partner, sit down! How's it going?", dictionary)