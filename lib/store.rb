
class Store < ActiveRecord::Base
  has_many :employees
  validates :name, presence:true
  validates :name, length: {minimum: 3}
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0}

  validate :myErrors
  private
  def myErrors
    if self.name == "Black"
     errors.add(:name, "should not be black")
    end
  end
end