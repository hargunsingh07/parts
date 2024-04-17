class User < ApplicationRecord
  rolify
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :orders
  has_many :user_roles
  has_many :roles, through: :user_roles

  after_commit :assign_default_role, on: :create

  private

  def assign_default_role
    if self.roles.blank?
      self.add_role(:customer)
    end
  end
end
