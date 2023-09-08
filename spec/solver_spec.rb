require 'spec_helper'

describe 'Class Solver Check' do
  let(:solver) { Solver.new }

  it 'Factorial Method Check' do
    expect(solver.factorial(0)).to eq(1)
    expect(solver.factorial(1)).to eq(1)
    expect(solver.factorial(5)).to eq(120)
    expect { solver.factorial(-5) }.to raise_error(ArgumentError, 'Factorial is not defined for negative numbers')
  end

  it 'returns the reversed string' do
    expect(solver.reverse('hello')).to eq('olleh')
  end

  it 'returns an empty string when given an empty string' do
    expect(solver.reverse('')).to eq('')
  end

  it 'returns the same character when given a single character string' do
    expect(solver.reverse('a')).to eq('a')
  end

  it 'reverses a longer string' do
    expect(solver.reverse('Ruby is fun!')).to eq('!nuf si ybuR')
  end
end
