require 'rspec'

# Part 1

# arr에 있는 모든 요소를 더하세요.
def sum arr
  #arr.inject(0){!sum.x| sum + x}
  arr.sum
end

# arr에 있는 최대값 2개를 더하세요.
def max_2_sum arr
  # 1등이랑 2등 뽑아서 더한다
  # 정렬 후 앞에 두 원소를 더한다.(정렬)
  arr.empty?? 0 : arr.max(2).reduce(:+) #모든 요소를 더하면서
end

# n번째 값까지 더하세요.
def sum_to_n? arr, n
    arr.combination(2).any? { |a, b| a + b == n}
end

# Part 2

# "hello 이름"을 출력하는 코드를 쓰세요.
def hello(name)
  "Hello, #{name}"
end

# 자음으로 시작하는지 판별하는 코드를 쓰세요.
def starts_with_consonant? s
    !%w(a e i o u).include? s.downcase[0] unless s.empty? or /^\W/.match(s) #첫번째 글자만 출력, s인자
end