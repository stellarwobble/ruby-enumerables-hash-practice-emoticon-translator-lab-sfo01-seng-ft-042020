# require modules here
require 'yaml'


def load_library(path)
emoticons = {:english => {}, :japanese => {}}
  
  YAML.load_file(path).each do |meaning, describe|
     
     english, japanese = describe
     emoticons[:english][japanese] = meaning
     emoticons[:japanese][english] = japanese
  end
  emoticons
end

def get_japanese_emoticon(path, emoticon)
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