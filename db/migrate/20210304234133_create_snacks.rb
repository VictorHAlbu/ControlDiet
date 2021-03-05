class CreateSnacks < ActiveRecord::Migration[6.0]
  def change
    create_table :snacks do |t|
      t.string :snack
      t.time :time
      t.text :description
      t.references :diet, null: false, foreign_key: true

      t.timestamps
    end
  end
end
