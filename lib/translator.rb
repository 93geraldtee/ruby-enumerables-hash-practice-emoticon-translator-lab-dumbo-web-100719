require 'pry'
require 'yaml'
def load_library(emoticons_file)
  files = YAML.load_file('./lib/emoticons.yml')
  hash = {:get_meaning => {}, :get_emoticon => {}}
  files.each do |meaning, emoticons|
    hash[:get_meaning][emoticons[0]] = meaning
    hash[:get_emoticon][]
    binding.pry
  end
  hash
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end