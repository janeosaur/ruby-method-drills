##############################
#### MANIPULATING HASHES ####
##############################
#character_count
  # takes in a string
  # counts how many times each character appears in a string
  # ignores case
  # returns the hash

def character_count string
  char_counts = {}
  string.downcase!
  string.each_char do |char|
    if char_counts[char].nil?
      char_counts[char] = 1
    else
      char_counts[char] += 1
    end
  end
  char_counts
end

## STRETCH ##
#word_count
  # takes in a string
  # counts how many times a word appears in a string
  # ignores case
  # ignores characters that are not in the sequence a-z
  # returns a hash with all the words and their counts

def word_count string
  word_counts = {}
  string.downcase!
  string.split(" ").each do |word|
    word = word.gsub(/[^a-z]/i, "")
    if word_counts[word].nil?
      word_counts[word] = 1
    else
      word_counts[word] += 1
    end
  end
  word_counts
end

## STRETCH ##
#most_frequent_word
  # takes in a string
  # finds the word in a string that appears with the most frequency

def most_frequent_word sentence
  word_counts = word_count(sentence)
  word_counts.empty? ? nil : word_counts.invert.max[1]
  #invert: instead of {"hello" => 1, "you" => 1} it produces {1 => "hello", 1 => "you"}
  #max: finds the key-value pair with highest value key-value, puts into array
end
