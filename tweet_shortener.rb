
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

def word_substituter(tweet)
  tweet_a = tweet.to_a
  tweet_a.each_with_index do |word, index|
    tweet_a[index] = dictionary[word] if true
  end
  #dictionary[wrd]
end

#puts dictionary.keys.class

def bulk_tweet_shortener(tweets)
end

def selective_tweet_shortener(tweet)
end

def shortened_tweet_truncator(tweet)
end
#puts dictionary["hello"]