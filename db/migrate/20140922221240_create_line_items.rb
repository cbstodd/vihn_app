class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.belongs_to :order, index: true
      t.belongs_to :provider, index: true
      t.integer :hours
      t.decimal :price

      t.timestamps
    end
  end
end
