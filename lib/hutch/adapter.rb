if defined?(JRUBY_VERSION)
  require 'hutch/adapters/march_hare'
  module Hutch
    Adapter = Adapters::MarchHareAdapter
  end
else
  require 'hutch/adapters/bunny'
  require 'hutch/config'
  module Hutch
    if Config.get(:test_mode)
      p 'setting mock adapters!'
      Adapter = Adapters::BunnyMockAdapter
    else
      Adapter = Adapters::BunnyAdapter
    end
  end
end
