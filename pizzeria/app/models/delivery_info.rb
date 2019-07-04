class DeliveryInfo < ApplicationRecord
    belongs_to :order
  	validates :address_1, presence: true
  	validates :address_2, presence: true
  	validates :phone, numericality: true , presence: true
end
