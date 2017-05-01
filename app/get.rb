require "open-uri"
require "nokogiri"
 
url = URI.encode "http://ejje.weblio.jp/content/深層学習"
html = Nokogiri::HTML(open(url))
i=0
html.css('.mainBlock').each do |main|
  i+=1
  if i==3
    puts main
  end
end
