RSpec.shared_examples "an algorithm" do
  let(:sample) { (1..10).map { rand(1..100).to_i } }
  let(:expected) { sample.sort }

  it 'sorts the array' do
    actual = subject.sort sample

    expect(actual).to eq(expected)
  end

  it 'keeps the same elements' do
    actual = subject.sort sample

    expect(actual).to contain_exactly(*expected)
  end
end
