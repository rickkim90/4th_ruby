require 'rspec'
require_relative '../calculator'

describe Calculator do # Calculator를 지금부터 테스트 하겠다
    before { @calculator = Calculator.new('test') } #테스트 전에 객체를 만든다
    
    it "should add 2 numbers correctly" do
       expect(@calculator.add(2,2)).to eq(4)
    end
    
    it "should substract 2 numbers correctly" do
       expect(@calculator.substract(5,3)).to eq(2)
    end
end