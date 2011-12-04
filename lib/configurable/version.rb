# encoding: utf-8
module Configurable  
  module VERSION
    MAJOR = 0
    MINOR = 1
    PATCH = 0
    BUILD = nil 

    STRING = [MAJOR, MINOR, PATCH, BUILD].compact.join('.')

    def self.version
      STRING
    end

  end
end
