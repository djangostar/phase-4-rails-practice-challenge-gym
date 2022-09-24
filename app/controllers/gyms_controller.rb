class GymsController < ApplicationController
  has_many :clients, through: memberships
end
