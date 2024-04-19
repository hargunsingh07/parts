class Role < ApplicationRecord
  belongs_to :resource, polymorphic: true, optional: true
  validates :resource_type, inclusion: { in: Rolify.resource_types }, allow_nil: true

  has_many :user_roles
  has_many :users, through: :user_roles

  scopify
end
