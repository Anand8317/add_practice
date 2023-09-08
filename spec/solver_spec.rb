require 'spec_helper'

describe 'Class Solver Check' do
	let(:solver) { Solver.new }

	it 'Factorial Method Check' do
		expect(solver.factorial(0)).to eq(1)
	    expect(solver.factorial(1)).to eq(1)
	    expect(solver.factorial(5)).to eq(120)
	    expect {solver.factorial(-5) }.to raise_error(ArgumentError, "Factorial is not defined for negative numbers")

	end
end