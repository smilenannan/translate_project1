require 'net/http'
require 'uri'
require 'json'

module PapersHelper
  def getTranslate (q='', source='ja', target='en')
    url = URI.parse('https://www.googleapis.com/language/translate/v2')
    params = {
      q: q,
      target: target,
      source: source,
      model: "nmt",
      key: Rails.application.secrets.translator_key
    }
    url.query = URI.encode_www_form(params)
    res = Net::HTTP.get_response(url)
    JSON.parse(res.body)["data"]["translations"].first["translatedText"]
  end
end
