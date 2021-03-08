class Diet < ApplicationRecord
    belongs_to :user, optional: true
    has_many :snacks

    accepts_nested_attributes_for :snacks, reject_if: :all_blank, allow_destroy: true

    before_save :imc

    def imc
        (self.ideal_weight = weight / (height * height)).round(2)
    end

end
