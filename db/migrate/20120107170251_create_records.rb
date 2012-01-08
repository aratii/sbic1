class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.string :name
      t.string :sex
      t.integer :quantity
      t.string :location
      t.string :gridRef
      t.string :recorder
      t.datetime :date
      t.string :reference
      t.string :comment

      t.timestamps
    end
  end
end
