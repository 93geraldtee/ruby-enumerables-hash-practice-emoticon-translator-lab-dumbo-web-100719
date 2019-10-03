require 'pry'
require 'yaml'
def load_library(emoticons_file)
  files = YAML.load_file(emoticons_file)
  hash = {:get_meaning => {}, :get_emoticon => {}}
    files.each do |key, value|                #the keys inside the 'get_meaning' hash are the Japanese emoticons
    hash[:get_emoticon][value[0]] = files[key][1]
    #binding.pry
    hash[:get_meaning][value[1]] = key        #has two keys, 'get_meaning' and 'get_emoticon' (FAILED - 1)
  end
  hash
end

def get_japanese_emoticon(emoticons_file, emoticon)
  emoticon_hash = load_library(emoticons_file)
  if emoticon_hash[:get_emoticon][emoticon]
   return emoticon_hash[:get_emoticon][emoticon]
  else
   return "Sorry, that emoticon was not found"
  end
  #binding.pry
end

def get_english_meaning(emoticons_file, emoticon)
  emoticon_hash = load_library(emoticons_file)
  binding.pry 
  # code goes here (Japanese to meaning)
end