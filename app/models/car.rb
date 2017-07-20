class Car < ApplicationRecord
  validates :battery, numericality: {only_integer: true, minimum: 60, maximum: 90}
  validates :wheel, numericality: {only_integer: true, minimum: 17, maximum: 19}
  validates :sd, inclusion: { in: [true, false] }
  validates :ap, inclusion: { in: [true, false] }
  validates :awd, inclusion: { in: [true, false] }
  validates :paid, inclusion: { in: [true, false] }
  validates :color, inclusion: {in: ['red','white','black','grey']}

  # Method for getting the deposit amoutn for an order
  def self.deposit
    2500
  end
end
