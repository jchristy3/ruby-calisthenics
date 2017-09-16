class Dessert
  def initialize(name, calories)
    @name = name
    @calories = calories
  end
  def name
    @name
  end
  def name=(value)
    @name = value
  end
  def calories
    @calories
  end
  def calories=(value)
    @calories = value
  end
  def healthy?
    self.calories < 200
  end
  def delicious?
    self.is_a? Dessert
    @flavor != "licorice"
  end
end

class JellyBean < Dessert
  def initialize(flavor)
    @flavor = flavor
    @name = flavor + " jelly bean"
    @calories = 5
  end
  def flavor
    @flavor
  end
  def flavor=(value)
    @flavor = value
  end
end
