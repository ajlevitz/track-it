module ApplicationHelper
  def value_color(thing)
    if thing.value >= 5
      return "below-color"
    else
      return "above-color"
    end
  end
end
