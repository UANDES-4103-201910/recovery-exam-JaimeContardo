class OrderPizza < ApplicationRecord
  belongs_to :order
  belongs_to :pizza
  validates :order_id , presence: true
  validates :pizza_id , presence: true
end

