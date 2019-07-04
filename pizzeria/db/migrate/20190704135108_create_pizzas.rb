class CreatePizzas < ActiveRecord::Migration[5.2]
  def change
    create_table :pizzas do |t|
      t.string :name
      t.references :crust, foreign_key: true
      t.references :recipe, foreign_key: true

      t.timestamps
    end
  end
end
