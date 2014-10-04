class Outfit < ActiveRecord::Base
  belongs_to :user
  has_many :cameos
  has_many :items, through: :cameos
  validates_presence_of :name

  def self.generate
    @user = User.find_by(id: 18) #TODO params us
    outfit = []
    random = rand(1..2)
    if random == 1
      outfit.push(@user.items.where(category: "top").sample)
      outfit.push(@user.items.where(category: "bottom").sample)
    else
      outfit.push(@user.items.where(category: "one piece").sample)
    end
    outfit.push(@user.items.where(category: "accessory").sample(3))
    outfit.push(@user.items.where(category: "shoes").sample)
    outfit
  end

end
