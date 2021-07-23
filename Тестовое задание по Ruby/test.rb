require 'rspec'
require_relative 'main.rb'
describe MakeCountForN do
  it 'Nice' do
    expect(MakeCountForN(1, Subsequence, MakeCount).print_result.to eq '1\n'
    expect(MakeCountForN(3, Subsequence, MakeCount).print_result.to eq '1\n11\n21\n'
    expect(MakeCountForN(6, Subsequence, MakeCount).print_result.to eq '1\n11\n21\n1211\n111221\n312211\n13112221\n'
  end

