def dictionary 
  dictionary = {
    "hello" => 'hi',
    "to, two, too" => '2',
    "for, four" => '4',
    'be' => 'b',
    'you' => 'u',
    "at" => "@",
    "and" => "&"
  }
end 

def word_substituter(tweet)
  tweet.split.map do |word|
    if dictionary.keys.include?(word.downcase)
      word = 
end 