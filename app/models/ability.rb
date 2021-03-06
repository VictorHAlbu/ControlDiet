# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    if user.present?  
      canot :read, @Snack, user_id: user.id, Public: false
    end  
  end
end
