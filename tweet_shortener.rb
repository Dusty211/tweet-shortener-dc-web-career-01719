
def dictionary
  
  {
    "hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "four" => '4',
    "be" => 'b',
    "you" => 'u',
    "at" => '@',
    "and" => '&'
  }
  
end

#test_tweet = "I'm running out of example tweets for you guys, which is weird, because I'm a writer and this is just writing and I tweet all day. For real, you guys. For real."

def word_substituter(tweet)
  tweet_a = tweet.split
  tweet_a.each_with_index do |word, index|
    tweet_a[index] = dictionary[word] if dictionary.keys.find {|key| key == word}
    tweet_a[index] = dictionary[word.downcase].capitalize if dictionary.keys.find {|key| key.capitalize == word}
  end
  tweet_a.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  (tweet.split('').length < 130)? tweet : bulk_tweet_shortener(tweet)
end

def shortened_tweet_truncator(tweet)
end
#puts dictionary["hello"]