# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)      not null
#  email           :string(255)      not null
#  password_digest :string(255)      not null
#  city            :string(255)      not null
#  state           :string(255)      not null
#  role            :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#

class User < ActiveRecord::Base
  has_many :items
  has_many :outfits
  validates :name, :email, :city, :state, :password_digest, presence: true
  validates :email, uniqueness: true
  has_secure_password

  def is_admin?
     (self.role =~ /admin/) == 0 ? true : false
  end

  def is_client?
    self.role == 'client'
  end

  # define a comparator method for sorting...
  #
  def <=>(other)
    if self.role != other.role # sort by role
      self.role_value <=> other.role_value
    else # sort by name
      self.name <=> other.name
    end
  end

  def role_value
    case self.role
    when 'admin'      then 2
    when 'client'   then 1
    else 0; end
  end
end
