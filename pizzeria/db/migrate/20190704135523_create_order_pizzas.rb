class CreateOrderPizzas < ActiveRecord::Migration[5.2]
  def change
    create_table :order_pizzas do |t|
      t.references :order, foreign_key: true
      t.references :pizza, foreign_key: true

      t.timestamps
    end
  end
end
