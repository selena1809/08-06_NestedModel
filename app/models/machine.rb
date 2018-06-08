class Machine < ApplicationRecord
  has_many :parts, inverse_of: :machine
  accepts_nested_attributes_for :parts
end
