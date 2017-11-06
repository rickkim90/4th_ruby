require 'httparty'
require 'nokogiri'

url = "http://finance.naver.com/sise/"
response = HTTParty.get(url) #HTTParty를 통해 url에 있는 정보 가져온다
text = Nokogiri::HTML(response.body) #Nokogiri를 통해 컴퓨터가 검색이 쉽게 만든다
# Nokogirl::XML => xml파싱할때
kospi = text.css('#KOSPI_now') #.css를 통해 크롬 selector를 기준으로 요소 검색

puts kospi.text #kospi출력 text=content .text를 이용해 tag안에 있는 요소를 가져온다

