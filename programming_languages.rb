def reformat_languages(languages)
  reformatted = {}

  languages.each do |style, languages|
    languages.each do |language, type|
      reformatted[language] = type
    end
  end

  return reformatted
end
