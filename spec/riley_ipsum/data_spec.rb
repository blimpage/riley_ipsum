require 'spec_helper'

RSpec::Matchers.define :be_included_in do |expected|
  match do |actual|
    expected.include?(actual)
  end
end

describe RileyIpsum::Data do
  describe '#random_line' do
    let(:data_file) { File.readlines(File.join(File.dirname(__FILE__), '../../data/riley.txt')).map(&:strip) }

    subject(:data) { RileyIpsum::Data.new }

    it 'grabs a random line from the data file' do
      expect(data.random_line).to be_included_in(data_file)
    end
  end
end
