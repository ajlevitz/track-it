module ThingsHelper
  def value_color(thing)
    if thing.value >= 5
      return "above-color"
    else
      return "below-color"
    end
  end

end
