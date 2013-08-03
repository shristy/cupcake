class Cupcake < ActiveRecord::Base
  validates :flavour, presence: {message: "Enter a flavour"}, uniqueness: {scope: :price ,message: "Flavour already there with same price"}
  validates :price, numericality: {greater_than: 0, message: "Nothing's for free"}
  validates :price, numericality: {less_than_or_equal_to: 52, message: "Too expensive, what about something less than = 52"}
  
  has_many :reviews
  has_many :likes, through: :reviews
end

