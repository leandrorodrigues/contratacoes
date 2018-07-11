class Contract < ApplicationRecord
  belongs_to :supplies
  belongs_to :user_owner
  belongs_to :user
end
