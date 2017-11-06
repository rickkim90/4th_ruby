## 파일명 바꾸기

# 1. 해당 폴더로 들어간다.
Dir.chdir("src")
# 2. 폴더 안을 돌면서 파일들의 이름들을 가져온다.
# Dir.foreach(Dir.pwd) do |a|
#     #File.rename("i.to_s + ".txt", "hope.txt")
#     #puts a
# end

files = Dir.entries(Dir.pwd).reject {|name| name[0] == '.'} #첫번째 글자[0]가 .이면 무시
files.each do |f|
    File.rename(f, "samsung" + f)
end

# 3. 각각의 이름을 "1.txt" = > "samsung1.txt"

