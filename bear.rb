class Bear

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def stomach_count()
    return @stomach.count()
  end

  def bear_eats(river)

    fish = river.remove_fish()
    @stomach << fish if !fish.nil?

    # for fish in river.fishes()
    #   @stomach << fish
    # end
    # river.remove_all_fishes()
  end

  def bear_roar(roar)
    return "#{roar}!"
  end
end
