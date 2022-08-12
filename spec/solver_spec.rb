require_relative '../solver'

RSpec.describe 'Solver' do
  before(:all) do
    @solver = Solver.new
  end

  context 'Should handle factorial function' do
    it 'Should return the correct factorial' do
      expect(@solver.factorial(2)).to eq 2
    end
  end
  it 'Should return 1 if 0 is given' do
    expect(@solver.factorial(0)).to eq 1
  end
  it 'Should throw an error when negative is entered' do
    expect { @solver.factorial(-1) }.to raise_error(RangeError, 'A negative number is not allowed')
  end

  context 'should handle fizzbuzz function' do
    it 'should return fizzbuzz when number divisible by 3 and 5' do
      expect (@solver.fizzbuzz(15)).to eq 'fizzbuzz'
    end
    it 'should return fizz when number divisible by 3' do
      expect (@solver.fizzbuzz(3)).to eq 'fizz'
    end
    it 'should return buzz when number divisible by 5' do
      expect (@solver.fizzbuzz(5)).to eq 'buzz'
    end
    it 'should return number if not divisible by 3 or 5' do
      expect (@solver.fizzbuzz(1)).to eq '1'
    end
  end
end
