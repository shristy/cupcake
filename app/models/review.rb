class Review < ActiveRecord::Base
  belongs_to :cupcake

  validates_presence_of :cupcake

  has_many :likes
end
