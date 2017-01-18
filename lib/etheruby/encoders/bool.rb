require_relative 'base'
require_relative 'int'

module Etheruby::Encoders

  class Bool < Base
    def encode
      Uint.new(data ? 1 : 0).encode
    end

    def decode
      Uint.new(data).decode == 1
    end
  end

end
