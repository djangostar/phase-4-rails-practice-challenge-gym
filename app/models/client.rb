class Client < ApplicationRecord
  has_many :gyms, through: :memberships
end
