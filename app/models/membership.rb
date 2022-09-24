class Membership < ApplicationRecord
  belongs_to :membership
  belongs_to :gym

  validates :client_id, uniqueness: {scope: :gym_id, message: "can only have one mebership to a gym"}
end
