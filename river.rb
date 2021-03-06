class River

  attr_reader :name, :fishes
  attr_writer :fishes

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

    def add_fish(fish)
      @fishes.push(fish)
    end

    def remove_fish
      random = @fishes.shuffle()
      random_fish = random.pop()
      @fishes.delete(random_fish)
    end
    # def remove_fish(fish)
    #   @fishes.delete(fish)
    # end

    def remove_all_fishes()
      @fishes = []
    end

  end
