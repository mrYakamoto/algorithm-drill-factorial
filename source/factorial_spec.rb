require_relative('factorial')

describe 'factorial_iterative' do
  it 'should calculate a factorial' do
    expect(factorial_iterative(5)).to eq(5 * 4 * 3 * 2 * 1)
  end
end

describe 'factorial_recursive' do
  #Oh man, this is empty. Good thing you're going to write tests here!
end
