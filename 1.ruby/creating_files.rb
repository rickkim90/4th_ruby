# 1. 특정 폴더로 들어간다
# 2. 파일을 생성한다.
# 3. 내용을 작성한다.

Dir.chdir("src")


# 30개의 파일을 만든다.
# 1.txt ~ 30.txt
# 1.txt => "1번째 내용", 2.txt => "2번째 내용",...

30.times do |i|
  i += 1 #i강제로 +!
  File.open(i.to_s + ".txt", "w") do |f| #f에 저장 |저장이름|, i 돌때마다 숫자 
    f.write(i.to_s + "번째 내용") #("내용")   
  end
end


#파일을 읽고 쓰고 지우고 File.open
