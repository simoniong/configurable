module Configurable
  def self.included(base)
    base.extend ClassMethod
  end

  def config
    self.class.config.inheritable_copy
  end

  module ClassMethod
    def config
      @_config ||= if respond_to?(:superclass) && superclass.respond_to?(:config)
        superclass.config.inheritable_copy
      else
        Configuration.new
      end
    end

    def configure
      yield config
    end
  end

end
