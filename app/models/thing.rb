class Thing < ActiveRecord::Base
  validates_uniqueness_of :date
  validates :value, presence: true
end
