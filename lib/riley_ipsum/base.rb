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

      lines.join(', ') + '.'
    end

    private

    def load_data_source
      File.expand_path("../../bin", "/tmp/x")
    end
  end
end
