# require modules here
require 'yaml'


def load_library(data)
hash = {}
files = YAML.load_file('./lib/emoticons.yml')
files.each do |emotions, symbols|
  hash[emotions] = {:english => symbols[0], :japanese => symbols[1]}
end
hash 
end

def get_japanese_emoticon()
 emoticons = load_library(path) 
  result = emoticons[:japanese][emoticon]
  if result
    result
  else
    "Sorry, that emoticon was not found"
  end
end
    

def get_english_meaning(path, emoticon)
 emoticons = load_library(path)
  result = emoticons[:english][emoticon] 
  if result
    result
  else
    "Sorry, that emoticon was not found"
  end
end