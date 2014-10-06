class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :orders, dependent: :destroy
  has_many :inventories
  before_create :default_status, :default_items


  def default_items
    Inventory.create(name:"wooden sword", value:10, weight: 5)
    Inventory.create(name:"torch", value:5, weight: 5)
    Inventory.create(name:"bread", value:5, weight: 1)
  end

  def default_status
  	self.health = 100
  	self.mana = 100
  end

end
