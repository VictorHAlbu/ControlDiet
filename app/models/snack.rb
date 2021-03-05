class Snack < ApplicationRecord
  belongs_to :diet
  belongs_to :user, optional: true
end
