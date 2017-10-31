# require modules here
require "yaml"

# => ["Apple","Orange","Strawberry","Mango"]
def load_library(file_path)
  # code goes here
  emoticons = YAML.load_file(file_path)
  return emoticons
end

def get_japanese_emoticon(file_path, emoticon)
  # code goes here
  library = load_library(file_path)
  library["get_emoticon"].each do |english, japanese|
    if english == emoticon
      return japanese
    end
  end
  return "Sorry, that emoticon was not found"
end

def get_english_meaning(file_path, emoticon)
  # code goes here
  library = load_library(file_path)
  library["get_meaning"].each do |face, meaning|
    if face === emoticon
      return meaning
    end
  end
  return "Sorry, that emoticon was not found"
end
