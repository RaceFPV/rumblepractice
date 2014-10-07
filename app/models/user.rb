class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :orders, dependent: :destroy
  has_one :inventory
  before_create :default_status, :default_items

  def default_items
   @inventory = Inventory.create(user_id:self.id)
   Item.create(itemName:"wooden sword",value:10,weight:15,inventory_id:@inventory.id)
   Item.create(itemName:"bread",value:5,weight:1,inventory_id:@inventory.id)
   Item.create(itemName:"toch",value:10,weight:15,inventory_id:@inventory.id)
  end

  def default_status
  	self.health = 100
  	self.mana = 100
  end

end
