require_relative 'riley_ipsum/base'
require_relative 'riley_ipsum/data'

module RileyIpsum
  def self.generate(options = {})
    Base.new(options).generate
  end
end
