class Diet < ApplicationRecord
    belongs_to :user, optional: true
    has_many :snacks

    accepts_nested_attributes_for :snacks, reject_if: :all_blank, allow_destroy: true

    before_save :imc

    def imc
        (self.ideal_weight = weight / (height * height)).round(2)
    end


    def classification
          if self.ideal_weight <= 22
            return 'Baixo peso'
          end
          if self.ideal_weight < 27
            return 'Peso adequado'
          end

        if self.ideal_weight < 18.5
          return 'Baixo peso'
        end
        if self.ideal_weight < 25
          return 'Peso adequado'
        end
        return 'Sobrepeso'
    
      end
    
end
