class Provider < ActiveRecord::Base
  has_many :line_items
  has_many :orders, :through => :line_items

  validates :name, presence: true
  validates :service, presence: true
  validates :email, presence: true, 
            :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/, message: "invalid email" }
  validates :zip_code, presence: true, :format => { with: /\A\d{5}\z/ }
  validates :price, numericality: { greater_than_or_equal_to: 0 }
  validates :phone_number, presence: true, 
            format: { with: /(\d{3}\d{3}\d{4}|\d{3}-\d{3}-\d{4})/, message: "incorrect format" }
  validates :profile_info, presence: true, length: { minimum: 10, maximum: 1000 }
end
