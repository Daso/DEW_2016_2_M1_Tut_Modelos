class Product < ActiveRecord::Base
  belongs_to :category
  has_many :inventories
  has_many :warehouses, through: :inventories
  include Loggable
  
  validates :name, presence: true, 
                   uniqueness: {case_sensitive: false} 
  validates :category, presence: true
  
  
  def category_name
    self.category.name
  end
end
