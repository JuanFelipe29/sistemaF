class CreateSupplies < ActiveRecord::Migration[7.0]
  def change
    create_table :supplies do |t|
      t.references :supplier, null: false, foreign_key: true
      t.string :code
      t.string :name
      t.string :quantity
      t.decimal :unit_price
      t.decimal :total_value

      t.timestamps
    end
  end
end
