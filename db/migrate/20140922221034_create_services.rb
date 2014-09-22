class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.belongs_to :customer, index: true
      t.datetime :placed_at
      t.decimal :total_amount

      t.timestamps
    end
  end
end
