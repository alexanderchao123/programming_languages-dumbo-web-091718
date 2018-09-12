require 'pry'
def reformat_languages(languages)
  reformatted = {}
  languages.each do |style, languages|
    languages.each do |language, type|
      reformatted[language] = type
      # if reformatted[language] has the key :style
      # push in the style into Array
      # else create the style key and assign an array value
      # and push in the style
      if reformatted[language].has_key?(:style)
        reformatted[language][:style] << style
      else
        reformatted[language][:style] = [style]
      end
    end
  end
  return reformatted
end

languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    },
    :ruby => {
      :type => "interpreted"
    }
  }
}

p reformat_languages(languages)
