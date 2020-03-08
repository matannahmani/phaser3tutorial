class UserStructure < ApplicationRecord
  belongs_to :structure
  belongs_to :user
end
