# require modules here
require 'yaml'


def load_library(path)
emoticons = {"get_meaning" => {}, "get_emoticon" => {}}
  
  YAML.load_file(path).each do |meaning, describe|
     
     english, japanese = describe
     emoticons["get_meaning"][japanese] = meaning
     emoticons["get_emoticon"][english] = japanese
  end
  emoticons
end

def get_japanese_emoticon(path, emoticon)
 emoticons = load_library(path) 
  result = emoticons["get_emoticon"][emoticon]
  if result
    result
  else
    "Sorry, that emoticon was not found"
  end
end
    

def get_english_meaning(path, emoticon)
 emoticons = load_library(path)
  result = emoticons["get_meaning"][emoticon] 
  if result
    result
  else
    "Sorry, that emoticon was not found"
  end
end