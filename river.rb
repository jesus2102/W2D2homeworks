class River

  attr_reader :name, :fishes

    def initialize(name)
      @name = name
      @fishes = []
    end

    def river_has_name(name)
      return name
    end

    def count_fishes()
      return @fishes.count()
    end
  end
