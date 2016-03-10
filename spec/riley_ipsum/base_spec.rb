require 'spec_helper'

describe RileyIpsum::Base do
  let(:line) { 'got tim' }
  let(:data) { RileyIpsum::Data }

  describe '#generate' do
    subject(:riley_ipsum) { RileyIpsum::Base.new }

    before do
      allow(data).to receive(:new).and_return(double(:random_line => line))
    end

    context 'when a single line is requested' do
      it 'generates a line from data with a period at the end' do
        expect(riley_ipsum.generate).to eq('got tim.')
      end

      context 'when a line already ends with punctuation' do
        let(:line) { 'got tim!!!' }

        it 'generates a line from data but does not add a period at the end' do
          expect(riley_ipsum.generate).to eq('got tim!!!')
        end
      end
    end

    context 'when multiple lines are requested' do
      subject(:riley_ipsum) { RileyIpsum::Base.new(:lines => 3) }

      it 'generates multiple lines, separated by comma' do
        expect(riley_ipsum.generate).to eq('got tim, got tim, got tim.')
      end

      context 'when a line already ends with punctuation' do
        let(:line) { 'got tim?' }

        it 'generates multiple lines, but does not add commas' do
          expect(riley_ipsum.generate).to eq('got tim? got tim? got tim?')
        end
      end
    end
  end
end
