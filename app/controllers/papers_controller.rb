class PapersController < ApplicationController
  def index
  end

  def translate
    @original = params.permit(:original)[:original]
    @en_original = getTranslate(@original)
    
    @edit_en_original = params.permit(:edit_en_original)[:edit_en_original]
    if params[:reflect]
      @edit_en_original = @en_original
    end
    @ja_edit_en_original = getTranslate(@edit_en_original, 'en', 'ja')

    render :action=>:index
  end

  def translate_sentence
    if request.xhr?
      data = getTranslate(params[:str])
    end

    render json: {eng: data}.to_json, status: 200
  end

  def look_up_word
    require "open-uri"
    require "nokogiri"

    if request.xhr?
      word = params[:word]
      url = "http://ejje.weblio.jp/content/" + word
      html = Nokogiri::HTML(open(URI.encode url))
     end

    data = ''
    i = 0
    html.css('.mainBlock').each do |main|
      i+=1
      if i ==3
        data = main
      end
    end

    f = File.open('./app/views/shared/_word.html.erb', 'w')
    f.puts data
    f.close

    if system('bundle exec erb2slim ./app/views/shared/_word.html.erb ./app/views/shared/_word.html.slim')
      render html: data, status: 200
    end
  end
end
