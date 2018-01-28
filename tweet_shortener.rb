
# Write your code here.
def dictionary
dictionary = {
  "too" => "2",
  "to" => "2",
  "two" =>"2",
  "four" => "4",
  "for" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&"
}
end

# You can use regex or, check out the solution below that
# def word_substituter(tweet)
#   tweet = tweet.dup
#   dictionary.each do |word, replacement|
#     if tweet.include?(word)
#       tweet.gsub!(/\b#{word}\b/i, replacement)
#     end
#   end
#   tweet
# end


def word_substituter(tweet)
  tweet.split.collect do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else
      word
    end
  end.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end
