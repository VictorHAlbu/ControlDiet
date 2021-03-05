class CreateDiets < ActiveRecord::Migration[6.0]
  def change
    create_table :diets do |t|
      t.datetime :start_date
      t.datetime :final_date
      t.float :weight
      t.float :height
      t.float :ideal_weight

      t.timestamps
    end
  end
end
