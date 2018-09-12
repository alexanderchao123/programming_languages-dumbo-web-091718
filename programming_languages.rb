require 'pry'
def reformat_languages(languages)
  reformatted = {}

  languages.each do |style, languages|
    languages.each do |language, type|
      reformatted[language] = type
      binding.pry
      if !reformatted[language].has_key?(:style)
        reformatted[language][:style] = []
      else
        reformatted[language][:style] << style
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
    }

  }
}

p reformat_languages(languages)
