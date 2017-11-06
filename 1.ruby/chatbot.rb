#1. 미세먼지
# 주소는 건들지마세요.
# 요청 건수 제한이 있으니 조심히 ㅜ^ㅜ
require 'httparty'
url = 'http://openapi.airkorea.or.kr/openapi/services/rest/ArpltnInforInqireSvc/getMsrstnAcctoRltmMesureDnsty?stationName=%EC%98%81%EB%93%B1%ED%8F%AC%EA%B5%AC&dataTerm=MONTH&numOfRows=100&ServiceKey=sfE57qPQ5x1eAXU41ftcyXYJZK5eKEONTGzz%2FdCe069VtqGX4UwcpLZbJhXSayA%2FtauuMhXPXttKeoxuafYWPQ%3D%3D'
response = HTTParty.get(url)
dust = response.first[1]["body"]["items"]["item"][1]["pm10Value"]
puts ("미세먼지 농도는 "+dust)

#조건문
dust = dust.to_i
if dust > 150
  puts "매우나쁨"
elsif dust > 80
  puts "나쁨"
elsif dust > 30
  puts "보통"
else
  puts "좋음"
end

# 2. 점심메뉴
print ["성게알밥", "스테이크", "베이징요리", "사시미"].sample

# 3. 로또번호
puts (1..45).to_a.sample(6).sort

#a = [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 ]
#a.sample         #=> 7
#a.sample(4)      #=> [6, 4, 2, 5] 
