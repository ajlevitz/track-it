class Thing < ActiveRecord::Base
  validates_uniqueness_of :date
  validates :value, presence: true

  def self.success_perc
    successn = Thing.where('value >= 5').count.to_f
    countn = Thing.count.to_f
    successn/countn 
  end

  def self.graph(width=1000)
    @things = Thing.all 

    graph = Gruff::Line.new(width)
    graph.title = "Dataset"

    labels = {}
    Thing.all.each_with_index do |thing, index|
      labels[index] = thing.date.to_s
    end
    graph.labels = labels

    values = Thing.all.pluck(:value)

    graph.data(:things, values)

    graph.write('app/assets/images/blah.png')
  end
end


# :thing [4,6,8,0]

