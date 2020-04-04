# require modules here
require 'yaml'


def load_library(path)
emoticons = {"get_meaning" => {}, "get_emoticon" => {}}
YAML.load
end

def get_japanese_emoticon(path, emoticon)
  hash = load_library(path)
  if hash["get_emoticon"][emoticon] == nil 
    return "Sorry, that emoticon was not found"
  else return hash["get_emoticon"][emoticon]
end
end 
    

def get_english_meaning(path, emoticon)
  hash = load_library(path)
  if hash["get_meaning"][emoticon] == nil 
    return "Sorry, that emoticon was not found"
  else return hash["get_meaning"][emoticon]
  end

end