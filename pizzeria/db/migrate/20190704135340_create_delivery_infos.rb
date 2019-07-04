class CreateDeliveryInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :delivery_infos do |t|
      t.references :order, foreign_key: true
      t.string :address_1
      t.string :address_2
      t.integer :phone

      t.timestamps
    end
  end
end
