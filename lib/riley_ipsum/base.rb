module RileyIpsum
  class Base
    DEFAULT_NUMBER_OF_LINES = 1

    def initialize(options = {})
      @lines = options.fetch(:lines, DEFAULT_NUMBER_OF_LINES)
      @data  = Data.new
    end

    def generate
      lines = @lines.times.map do
        @data.random_line
      end

      punctuated_lines(lines).join(' ')
    end

    private

    def punctuated_lines(lines)
      last_line_index = lines.size - 1

      lines.map.with_index do |line, index|
        if line =~ /(\.|,|!|\?)$/
          line
        elsif index == last_line_index
          line + '.'
        else
          line + ','
        end
      end
    end

    def load_data_source
      File.expand_path("../../bin", "/tmp/x")
    end
  end
end
