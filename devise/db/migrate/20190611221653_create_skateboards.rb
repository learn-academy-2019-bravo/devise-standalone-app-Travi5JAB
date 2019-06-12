class CreateSkateboards < ActiveRecord::Migration[5.2]
  def change
    create_table :skateboards do |t|
      t.string :brand
      t.integer :model_year
      t.string :model
      t.integer :user_id

      t.timestamps
    end
  end
end
