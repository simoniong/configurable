class Configuration < Hash
    def initialize(parent = nil)
      if parent
        super() { |h,k| parent[k] }
      else
        super()
      end
    end

    def inheritable_copy
      self.class.new(self)
    end

    def []=(key, value)
      super(key.to_sym, value)
    end

    def [](key)
      super(key.to_sym)
    end

    def method_missing(name, *args)
      if name.to_s =~ /(.*)=$/
        self[$1] = args.first
      else
        self[name]
      end
    end

    def respond_to?(name)
      true
    end
end
