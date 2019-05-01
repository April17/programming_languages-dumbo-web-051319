require "pry"
def reformat_languages(languages)
  # your code here
  languagesBytype = {}
  emptyAryhash = {:style => []}
  languages.collect do |sty, langs|
    langs.each do |lang, typ|
      binding.pry
      languagesBytype[lang] = typ
      languagesBytype[lang][:style] << sty
    end
  end
  languages.collect do |sty, langs|
    langs.each do |lang, typ|
      languagesBytype[lang][:style] << sty
    end
  end
  return languagesBytype
end
#first run take all the languages and push into languagesBytype
#second run take styles and push into languagesBytype
