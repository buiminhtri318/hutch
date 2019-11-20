require 'bunny-mock'

module Hutch
  module Adapters
    class BunnyMockAdapter < BunnyAdapter
      def initialize(opts={})
        @connection = BunnyMock.new
      end
    end
  end
end
