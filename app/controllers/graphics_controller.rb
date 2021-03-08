class GraphicsController < ApplicationController
  def index
    @weight_user = Diet.group_by_month(:weight).count
  end
end
