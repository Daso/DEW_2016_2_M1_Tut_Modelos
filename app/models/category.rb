class Category < ActiveRecord::Base
  has_many :products
  include Loggable
  
  validates :name,  presence: true, 
                    uniqueness: {case_sensitive: false}
end
