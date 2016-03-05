class Company < ActiveRecord::Base

  validates :name, presence: true, length: { maximum: 30 }
  validates :url, length: { maximum: 128 }
  validates :about, length: { maximum: 300 }
  validates :vision, length: { maximum: 300 }
  validates :ceo, length: { maximum: 30 }
  validates :address, length: { maximum: 256 }
  validates :postal, length: { maximum: 9 }, format: { with: /\A\d{,9}\z/i }
  validates :employees, numericality: { only_integer: true }

end
