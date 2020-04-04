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

def get_japanese_emoticon(file = "./lib/emoticons.yml", english)
data = load_library(file)
data.each do |emotions, symbols|
  data[emotions].each do |symbols, japanese|
    if data[emotions][:english] == english
      return data[emotions][:japanese]
    end
  end
end
return "Sorry, that emoticon was not found"
end
    

def get_english_meaning()
 