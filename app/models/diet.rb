class Diet < ApplicationRecord
    belongs_to :user, optional: true
    has_many :snacks
    attr_accessor :weight, :height
   
    accepts_nested_attributes_for :snacks, reject_if: :all_blank, allow_destroy: true 

end
