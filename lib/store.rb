class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: {minimum: 3}
  validates :annual_revenue, numericality: { greater_than_or_equal_to: 0,  only_integer: true }
  validate :sells_apparel

  def sells_apparel
    if (!mens_apparel && !womens_apparel)
      errors.add(:mens_apparel, "can't sell no apparel")
      errors.add(:womens_apparel, "can't sell no apparel")
    end
  end
end
