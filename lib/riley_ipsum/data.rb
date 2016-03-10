module RileyIpsum
  class Data
    DATA_FILE = File.join(File.dirname(__FILE__), '../../data/riley.txt')

    def random_line
      source[random_index]
    end

    private

    def random_index
      Random.rand(source.length)
    end

    def source
      @source ||= File.readlines(DATA_FILE).map(&:strip)
    end
  end
end
