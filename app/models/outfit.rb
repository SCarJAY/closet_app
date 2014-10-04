class Outfit < ActiveRecord::Base
  belongs_to :user
  has_many :cameos
  has_many :items, through: :cameos
  validates_presence_of :name

  def self.generate
    @user = User.find_by(id: 18) #TODO params not working? need sessions
    outfit = {}
    random = rand(1..2)
    if random == 1
      outfit["top"] = @user.items.where(category: "top").sample
      outfit["bottom"] = @user.items.where(category: "bottom").sample
    else
      outfit["one_piece"] = @user.items.where(category: "one piece").sample
    end
    outfit["accessory"] = @user.items.where(category: "accessory").sample
    outfit["shoes"] = @user.items.where(category: "shoes").sample
    outfit
  end

end
