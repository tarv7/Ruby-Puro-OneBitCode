require 'rest-client'
require 'json'

module Request
  def self.url_base
    'https://translate.yandex.net/api/v1.5/tr.json'
  end

  def self.key
    'trnsl.1.1.20200329T023916Z.b3e2bcceba3d26ff.381278263b4c77773cf668d0326ffb1735c2f915'
  end

  def self.get_avaiables_languages
    params = { key: self.key }
    response = RestClient.get("#{url_base}/getLangs", { params: params })

    JSON.parse(response.body)['dirs']
  end

  def self.get_translate(text, to)
    params = {
      key: self.key,
      text: text,
      lang: to
    }
    response = RestClient.get("#{url_base}/translate", { params: params })

    JSON.parse(response.body)
  end

  def self.detect_language(text)
    params = {
      key: self.key,
      text: text
    }
    response = RestClient.get("#{url_base}/detect", { params: params })

    JSON.parse(response.body)['lang']
  end

  def self.translate(text, to)
    params = {
      key: self.key,
      text: text,
      lang: to
    }
    response = RestClient.get("#{url_base}/translate", { params: params })

    JSON.parse(response.body)
  end
end