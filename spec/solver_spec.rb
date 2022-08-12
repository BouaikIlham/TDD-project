require_relative '../solver'

RSpec.describe 'Solver' do
  before(:all) do
    @solver = Solver.new
  end

  context 'Should hand factorial function' do
    it 'Should return the correct factorial' do
      expect(@solver.factorial(2)).to eq 2
    end
  end
  it 'Should return 1 if 0 is given' do
    expect(@solver.factorial(0)).to eq 1
  end
end
